//
//  Copyright@2013, Illinois Rocstar LLC. All rights reserved.
//        
//  See LICENSE file included with this source or
//  (opensource.org/licenses/NCSA) for license information. 
//

/** \file Pane_connectivity.h
 * Utility for constructing pane connectivities in parallel.
 */

#ifndef _PANE_CONNECTIVITY_H_
#define _PANE_CONNECTIVITY_H_

#include <list>

#include "mapbasic.h"
#include "com_devel.hpp"
#include "Simple_manifold_2.h"
#include "commpi.h"
#include "KD_tree_3.h"

MAP_BEGIN_NAMESPACE

//class KD_tree_3;

class Pane_connectivity {
  typedef std::vector<const COM::Pane*>  Pane_set;
  typedef MAP::Point_3<double>           Point_3;
public:
  /// Constructors
  explicit Pane_connectivity( const COM::DataItem *mesh,
			      MPI_Comm c=MPI_COMM_WORLD);

  /// Construct from an array of Simple_manifold_2
  explicit Pane_connectivity( const Simple_manifold_2 **mani2,
			      MPI_Comm c=MPI_COMM_WORLD);
  
  /// Create b2v mapping for nodes and facets (edges or faces) correspondence.
  void compute_pconn( COM::DataItem *pconn_n,
		      COM::DataItem *pconn_f=NULL) throw(int);

  /// Get the number of communicating panes.
  static void size_of_cpanes( const COM::DataItem *pconn, const int *pane_id,
			      int *npanes_total, int *npanes_ghost=NULL);

  /// Determine the number of pconn blocks for all panes. Must be called
  /// collectively by all processes of the owner window of pconn.
  /// Return 0 if pconn is empty; 1 if has only shared noodes; 2 if with
  /// shared nodes and ghost nodes; 3 if with ghost elements as well.
  static int pconn_nblocks( const COM::DataItem *pconn);

  /// Retrieve an offset to avoid the number of communicating panes when
  /// reading a pconn dataitem.
  static int pconn_offset() {
    return _pconn_offset;
  }

protected:

  /** Create b2v mapping (pane connectivity) for nodes or edges and store
   *  the solution into the given Roccom DataItem.
   *  The output is a vector of b2v mapping for the local panes (b2v[i] for
   *    panes[i]). Each mapping has the following format:
   *    <remote_pane_id> <n=#of coincident nodes> <local_id 1> ... <local_id n>
   *    <remote_pane_id 2> .... !repeat the above
   */
  void create_b2map( COM::DataItem *pconn,
		     bool for_facet) throw(int);

  /** Create b2v mapping (pane connectivity) for nodes or edges and store
   *  the results into a vector of vectors (with the same format as above).
   */
  void create_b2map( std::vector< std::vector<int> > &b2,
		     bool for_facet) throw(int);

  /// Obtains the IDs and coordinates of boundary nodes of all local panes.
  /// Also returns a tolerance for window query.
  double get_local_boundary_nodes( std::vector<int> &nodes, 
				   std::vector<Point_3> &pnts,
				   bool for_facet) throw(int);
  
  /// Collect the boundary nodes of all panes that are coincident with
  /// the boundary nodes of local panes. 
  /// Also returns an estimated tolerance for window query.
  double collect_boundary_nodes( std::vector<int>     &nodes, 
				 std::vector<Point_3> &pnts,
				 bool for_facet) throw(int);

  // Determine the nodes that coincide with given isolated points.
  // If the last argument is present, then it is mapped to KD_tree.
  void determine_coisolated_nodes( const COM::Pane &pn, 
				   std::vector<Point_3> &pnts,
				   const double tol, 
				   std::vector<bool> &is_co,
				   KD_tree_3 *tree=NULL) throw(int);
private:
  void collect_nodes( const std::vector<std::vector<int> > &ns,
		      std::vector<int> &nodes, 
		      std::vector<Point_3> &pnts, 
		      bool for_facet);

  void collect_points( const std::vector<std::vector<int> > &ns,
		       std::vector<Point_3> &pnts);

private:
  const COM::Window * const         _win;
  const Pane_set                    _panes;
  const Simple_manifold_2         **_mani2;
  MPI_Comm                          _comm;
  static const int                  _pconn_offset;


};

MAP_END_NAMESPACE

#endif /* _PANE_CONNECTIVITY_H_ */



