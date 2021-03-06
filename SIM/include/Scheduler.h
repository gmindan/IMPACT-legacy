//
//  Copyright@2013, Illinois Rocstar LLC. All rights reserved.
//        
//  See LICENSE file included with this source or
//  (opensource.org/licenses/NCSA) for license information. 
//

#ifndef _SCHEDULER_H_
#define _SCHEDULER_H_

using namespace std;
#include <vector>

class Scheduler
{
  friend class SchedulerAction;
  friend class UserSchedulerAction;
public:
  Scheduler();
  virtual ~Scheduler()  {}
  virtual void add_action(Action *);
  void reads(Action *, const char *attr, int idx);
  void writes(Action *, const char *attr, int idx);
  virtual void schedule();
  void init_actions(double t);
  void restarting(double t) { inited = 0; }          // clear init state for restarting
  void run_actions(double t, double dt);
  void finalize_actions();
  void set_alpha(double alpha) { alphaT = alpha; }
  void print(const char *fname);             // called by user
  char * print(FILE *f, const char *container_name);   // print a scheduler to file
  void printDDG(FILE *f);
  bool isEmpty() { return actions.size() == 0; }
  const char *name() { return scheduler_name.c_str(); }
  void set_name(const char* name) { scheduler_name = name; }
protected:
  std::string scheduler_name;

  struct ActionItem;
  typedef vector< ActionItem* > ActionList;

  struct ActionItem {
    Action *myaction;
    vector <const char *> read_attr;
    vector <int> read_idx;
    vector <const char *> write_attr;
    vector <int> write_idx;
    ActionList input;			// read_n
    ActionList output;		// write_n
    int    print_flag;		// for print
    
    ActionItem(Action *a): myaction(a) {}
    inline unsigned int n_write() { return write_attr.size(); }
    inline unsigned int n_read() { return read_attr.size(); }
    inline const char *name() { return myaction->name(); }
    inline Action * action() { return myaction; }
    int fullfilled();		// all output action identified
    int hasInput(const char *attr, int idx);
    int hasOutput(const char *attr, int idx);
    void print(FILE *f);
  };

  ActionList actions;		// all actions registered
  ActionList roots;		// forest
  ActionList sort;		// topological sort order

  double alphaT;		//

  int scheduled;		// flag: if has been scheduled
  int inited;			// flag: true if init called
protected:
  void buildDDG();
private:
  void topological_sort();
  void sanityCheck();
  void print_helper(FILE *f, ActionItem *aitem);
  void print_toposort(FILE *f);
  void printActions();		// for debugging
};

// user specify the order of actions
class UserScheduler: public Scheduler
{
public:
  virtual void add_action(Action *);
  virtual void schedule();
};

typedef void (Scheduler::* Scheduler_voidfn1_t)(double);

#endif



