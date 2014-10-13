#include "src/validator/SymState.h"
#include "src/ext/x64asm/include/x64asm.h"

 #include <sstream>
using namespace std;
using namespace x64asm;

namespace stoke{

//Convert an integer to a string
string itoa(int i)
{
	string retval;
	ostringstream out;
	out << i;
	retval = out.str();
	return retval;
}

//Map ids with their sizes. Registers get 64 and flags get 1.
pair<Bijection<string>, map<SS_Id, unsigned int> > InitStateMapping()
{
	 Bijection<string> retbij;
	 map<SS_Id, unsigned int> retsize;  

	 retsize[retbij.insert("RAX",rax)] = V_REGSIZE;
	 retsize[retbij.insert("RCX",rcx)] = V_REGSIZE;	 
	 retsize[retbij.insert("RDX",rdx)] = V_REGSIZE;
	 retsize[retbij.insert("RBX",rbx)] = V_REGSIZE;

	 retsize[retbij.insert("RSP",rsp)] = V_REGSIZE;
	 retsize[retbij.insert("RBP",rbp)] = V_REGSIZE;
	 retsize[retbij.insert("RSI",rsi)] = V_REGSIZE;
	 retsize[retbij.insert("RDI",rdi)] = V_REGSIZE;

	 retsize[retbij.insert("R8",r8)] = V_REGSIZE;
	 retsize[retbij.insert("R9",r9)] = V_REGSIZE;
	 retsize[retbij.insert("R10",r10)] = V_REGSIZE;
	 retsize[retbij.insert("R11",r11)] = V_REGSIZE;
	 retsize[retbij.insert("R12",r12)] = V_REGSIZE;
	 retsize[retbij.insert("R13",r13)] = V_REGSIZE;
	 retsize[retbij.insert("R14",r14)] = V_REGSIZE;
	 retsize[retbij.insert("R15",r15)] = V_REGSIZE;


	 retsize[retbij.insert("XMM0",XMM_BEG+xmm0)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM1",XMM_BEG+xmm1)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM2",XMM_BEG+xmm2)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM3",XMM_BEG+xmm3)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM4",XMM_BEG+xmm4)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM5",XMM_BEG+xmm5)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM6",XMM_BEG+xmm6)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM7",XMM_BEG+xmm7)] = V_XMMSIZE;

	 retsize[retbij.insert("XMM8",XMM_BEG+xmm8)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM9",XMM_BEG+xmm9)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM10",XMM_BEG+xmm10)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM11",XMM_BEG+xmm11)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM12",XMM_BEG+xmm12)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM13",XMM_BEG+xmm13)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM14",XMM_BEG+xmm14)] = V_XMMSIZE;
	 retsize[retbij.insert("XMM15",XMM_BEG+xmm15)] = V_XMMSIZE;


	 retsize[retbij.insert("AFLAG", FLAG_BEG+0)] = V_FLAGSIZE;	 
	 retsize[retbij.insert("CFLAG", FLAG_BEG+1)] = V_FLAGSIZE;	 
	 retsize[retbij.insert("OFLAG", FLAG_BEG+2)] = V_FLAGSIZE;	 
	 retsize[retbij.insert("PFLAG", FLAG_BEG+3)] = V_FLAGSIZE;	 
	 retsize[retbij.insert("SFLAG", FLAG_BEG+4)] = V_FLAGSIZE;	 
	 retsize[retbij.insert("ZFLAG", FLAG_BEG+5)] = V_FLAGSIZE;	 
	 
	 
	 
	 return pair<Bijection<string>, map<SS_Id, unsigned int> >(retbij, retsize);	 
}





V_Edge::V_Edge(string codenum, unsigned int i, unsigned int  j)
{

	src_ins_no_ = i;
	dest_ins_no_ = j;
}
VersionNumber& V_Edge::getVN()
{
  return incomingVN_;	
}

Ebb toEbb(VC& vc, const stoke::Cfg& f, unsigned int blocksize, string codenum)
{
  Ebb retval;
  V_Node prev;
  const Code& c = f.get_code();
  Cfg::instr_iterator j = c.begin();
  Cfg::instr_iterator je = c.end();
  retval.nodes.push_back(V_Node(codenum, 0, 0, *j));
  j++;
  unsigned int node_idx;
  node_idx = retval.nodes.size()-1;
  unsigned int count = 0;
  for(;/* count < blocksize &&*/ j !=je; j++, node_idx++, count++ )
	  {
      if (node_idx != retval.nodes.size() - 1) {
        throw VALIDATOR_ERROR("internal error");
      }
		  Instruction instr = *j;
#ifdef DEBUG_VALIDATOR
		  cout << "Adding "  << instr << " to EBB" << endl;
#endif
		  //node for the successor
		  V_Node n(codenum,  0, count+1, instr);
		  retval.nodes.push_back(n);
		  //Edge between successor and node_idx
   	          V_Edge e(codenum, node_idx, node_idx + 1);
		  retval.edges.push_back(e);
		  //index for the edge
		  unsigned int edge_idx = retval.edges.size() - 1;		  
		  //this edge is my successor
		  retval.nodes[node_idx].successors_.push_back(edge_idx);
		  //this edge is predecessor of my successor
		  retval.nodes[node_idx + 1].predecessors_.push_back(edge_idx);  
	  }

/*  Ebb retval;
  V_Node prev;
  //This is because Eric added an entry block?  
  unsigned int i  = f.fallthrough_target(f.get_entry());
  {
	  //get ith basic block
	  std::vector<Instruction>::const_iterator j = f.instr_begin(i);
	  std::vector<Instruction>::const_iterator je = f.instr_end(i);	  //make a node out of the first instruction
	  retval.nodes.push_back(V_Node(codenum, i, 0, *j));
	  j++;
	  unsigned int node_idx;
	  node_idx = retval.nodes.size()-1;
	  
	  //Store the indexes of the start and end of this block
	  //cout << "Block " << i << " starts at " << node_idx << " and ends at " << node_idx + f.num_instrs(i) - 1 << "\n";
	  //Insert the successor node and the edge
      unsigned int count = 0;
      
	  for(; count < blocksize && j !=je; j++, node_idx++, count++ )
	  {
		  assert(node_idx == retval.nodes.size() - 1);
		  Instruction instr = *j;
		  cout << "Adding "  << instr << " to EBB" << endl;
		  //node for the successor
		  V_Node n(codenum,  i, count+1, instr);
		  retval.nodes.push_back(n);
		  //Edge between successor and node_idx
   	      V_Edge e(codenum, node_idx, node_idx + 1);
		  retval.edges.push_back(e);
		  //index for the edge
		  unsigned int edge_idx = retval.edges.size() - 1;		  
		  //this edge is my successor
		  retval.nodes[node_idx].successors_.push_back(edge_idx);
		  //this edge is predecessor of my successor
		  retval.nodes[node_idx + 1].predecessors_.push_back(edge_idx);  
	  }
      //if(bbi.succs.size() > 1)
		//  retval.nodes[node_idx - 1].recordFlags = true;
  }
*/
 /* for (i  = blockid; i == blockid; i++ )
  {
    BasicBlock bbi = f.blocks[i];
    pair<unsigned int, unsigned int> bbi_start_end = block_start_end[i];
    unsigned int start = bbi_start_end.first;
    //// cout << "Block " << i << " has start " << start <<"\n";
    //look at all my predecessor blocks
    for(j = 0; j < bbi.preds.size(); j++)
    {
        pair<unsigned int, unsigned int> pred_start_end = block_start_end[bbi.preds[j]];
        unsigned int pred_end = pred_start_end.second;
        //// cout << "Block " << bbi.getPred(j) << " has end " << pred_end <<"\n";
        //create an edge between end of my predecessor and start of me
    	Edge e(vc, codenum,  pred_end, start);
    	retval.edges.push_back(e);
		unsigned int edge_idx = retval.edges.size() - 1;
		//this edge is successor of my predecessor
    	retval.nodes[pred_end].successors_.push_back(edge_idx);
    	//this edge is my predecessor
    	retval.nodes[start].predecessors_.push_back(edge_idx);
    }
  }*/
  return retval;
}

unsigned int Ebb::size()
{
  return nodes.size();	
}

V_Node& Ebb::getNode(unsigned int i)
{
  return nodes[i];	
}

VersionNumber& V_Node::getVN()
{
  return outgoingVN_;	
}

void VersionNumber::Init(set<SS_Id> vars, int n)
{
	set<SS_Id>::iterator iter;
	for(iter = vars.begin(); iter != vars.end(); iter++)
		VN_[ *iter ] = n;
}


unsigned int V_Node::predSize()
{
  return predecessors_.size();	
}

unsigned int V_Node::getPred(unsigned int i)
{
  return predecessors_[i];	
}

unsigned int V_Node::getSucc(unsigned int i)
{
  return successors_[i];	
}

V_Edge& Ebb::getEdge(unsigned int i)
{
  return edges[i];	
}

string TextInstructionWriter(const Instruction& instr)
{
  ostringstream oss;
  oss << instr;
  return oss.str();
}

void Ebb::print()
{

#ifdef DEBUG_VALIDATOR
  // cout << "Printing nodes" << "\n";
  unsigned int i = 0;
  unsigned int j = 0;
  for(i = 0; i< nodes.size(); i++)
  {
	  V_Node n = nodes[i];
	  
	   cout << "Node " << i <<"\n";
	   cout <<"Instruction: " << TextInstructionWriter(n.instr_) << "\n";
	   cout <<"BBNO " << n.bb_no_ << "Instr no " << n.ins_no_ << "\n";
	   cout << "printing predecessors\n";
	  for(j = 0; j < n.predecessors_.size(); j++)
		   cout << n.predecessors_[j] << "\n";
	   cout << "printing successors\n";
	  for(j = 0; j < n.successors_.size(); j++)
		   cout << n.successors_[j] << "\n";
	  if(n.recordFlags)  cout << "\tThis instruction is recording flags\n";
  }
   cout << "Printing edges \n";
  for(i = 0; i < edges.size(); i++)
  {
	  V_Edge e = edges[i];	  
	   cout << "Edge " << i <<"\n";
	   cout << "source is " << e.src_ins_no_ << "\n";
	   cout << "target is " << e.dest_ins_no_ << "\n";
  }
#endif
}
/*void VersionNumber::FindConflict(set<SS_Id> vars, VersionNumber& VN, set<SS_Id>& X_conf)
{
	set<SS_Id>::iterator i;
	for( i = vars.begin(); i != vars.end(); i++ )
		if(VN_[*i] != VN.VN_[*i])
			X_conf.insert(*i);
}
*/
void VersionNumber::Increment(std::set<SS_Id> X, unsigned int n)
{
  set<SS_Id>::iterator iter;	
  for( iter = X.begin(); iter != X.end(); iter++)
    VN_[*iter] += n;
}

const Instruction& V_Node::getInstr() const
{
  return instr_;	
}
/*
VersionNumber VersionNumber::ConflictJoin(const VersionNumber& Vn,const VersionNumber& Vmax,
										const std::set<SS_Id>& X,const std::set<SS_Id>& state_elems)
{
  VersionNumber retval;
  set<SS_Id>::iterator iter;
  for(iter = state_elems.begin(); iter != state_elems.end(); iter++)
  {
	  SS_Id temp = *iter;
	  if(X.find(temp) == X.end())
		  retval.VN_[temp] = Vn.get(temp);
	  else
		  retval.VN_[temp] = Vmax.get(temp);
  }
  return retval;
}
*/
unsigned int V_Node::succSize()
{
  return successors_.size();
}

void V_Edge::setVN(VersionNumber VN)
{
  incomingVN_ = VN;	
}

void V_Node::setVN(VersionNumber VN)
{
	outgoingVN_ = VN;	
}


}
