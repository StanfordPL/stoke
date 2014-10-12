#include "src/validator/extras.h"
#include "src/validator/validator.h"
#include <fstream>
using namespace std;

namespace{

uint getop(ifstream& myfile)
{
  string s;
  myfile >> s;
  assert(!s.compare("EQ") && "Only equality supported for now");
  return 0;
}

Expr getoperand(VC& vc,ifstream& myfile)
{
  string name;
  uint code_num, end, beg, size;
  myfile >> name;
  if(!name.compare("ZERO"))
  {
    myfile >> size;
    return vc_bvConstExprFromLL(vc, size, 0);
  }
  else if (!name.compare("ONE"))
  {
    myfile >> size;
    return vc_bvConstExprFromLL(vc, size, 1);    
  }
  else
  {
  myfile >> code_num >> end >> beg;
  SS_Id id = all_state_info.first.toId(name);
  size = all_state_info.second[id];
  assert(size == V_REGSIZE || size == V_XMMSIZE);
  return vc_bvExtract(vc, vc_varExpr(vc, (((name + "_") + to_string(code_num)) + "_0").c_str(), vc_bvType(vc, size*V_UNITSIZE)), end, beg);
  }
}
  
Expr getcnstr(VC& vc,ifstream& myfile)
{
  uint cnstrop = getop(myfile);
  Expr operand1 = getoperand(vc, myfile); 
  Expr operand2 = getoperand(vc, myfile); 
  if(cnstrop==0)
  {
    return EqExpr(vc, operand1, operand2);
  }
  else assert(false);
}

  
}

void addExtraConstraints(VC& vc, vector<Expr>& constraints, string filename )
{
    ifstream myfile (filename);
    int numcnstrs;
  if (myfile.is_open())
  {
    myfile >> numcnstrs;
    for(int cnstridx =0; cnstridx<numcnstrs; cnstridx++)
    {
      Expr e = getcnstr(vc,myfile);
      cout << "Adding " << filename << " " ; vc_printExpr(vc, e); cout << endl; 
      constraints.push_back(e);
    }
    myfile.close();
  }
}