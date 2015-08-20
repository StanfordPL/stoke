  .text
  .globl AddConstraint
  .type AddConstraint, @function

#! file-offset 0x68840
#! rip-offset  0x28840
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  Opcode             
.AddConstraint:                   #        0x28840  0      OPC=<label>        
  pushq %r14                      #  1     0x28840  2      OPC=pushq_r64_1    
  pushq %r13                      #  2     0x28842  2      OPC=pushq_r64_1    
  pushq %r12                      #  3     0x28844  2      OPC=pushq_r64_1    
  pushq %rbx                      #  4     0x28846  1      OPC=pushq_r64_1    
  subl $0x8, %esp                 #  5     0x28847  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                 #  6     0x2884a  3      OPC=addq_r64_r64   
  movl %edi, %r13d                #  7     0x2884d  3      OPC=movl_r32_r32   
  movl %r13d, %r13d               #  8     0x28850  3      OPC=movl_r32_r32   
  movsbl 0xe(%r15,%r13,1), %r12d  #  9     0x28853  6      OPC=movsbl_r32_m8  
  movl %r12d, %r14d               #  10    0x28859  3      OPC=movl_r32_r32   
  subl $0x1, %r14d                #  11    0x2885c  4      OPC=subl_r32_imm8  
  js .L_288c0                     #  12    0x28860  2      OPC=js_label       
  leal 0x14(%r13,%r12,4), %r12d   #  13    0x28862  5      OPC=leal_r32_m16   
  xorl %ebx, %ebx                 #  14    0x28867  2      OPC=xorl_r32_r32   
  nop                             #  15    0x28869  1      OPC=nop            
  nop                             #  16    0x2886a  1      OPC=nop            
  nop                             #  17    0x2886b  1      OPC=nop            
  nop                             #  18    0x2886c  1      OPC=nop            
  nop                             #  19    0x2886d  1      OPC=nop            
  nop                             #  20    0x2886e  1      OPC=nop            
  nop                             #  21    0x2886f  1      OPC=nop            
  nop                             #  22    0x28870  1      OPC=nop            
  nop                             #  23    0x28871  1      OPC=nop            
  nop                             #  24    0x28872  1      OPC=nop            
  nop                             #  25    0x28873  1      OPC=nop            
  nop                             #  26    0x28874  1      OPC=nop            
  nop                             #  27    0x28875  1      OPC=nop            
  nop                             #  28    0x28876  1      OPC=nop            
  nop                             #  29    0x28877  1      OPC=nop            
  nop                             #  30    0x28878  1      OPC=nop            
  nop                             #  31    0x28879  1      OPC=nop            
  nop                             #  32    0x2887a  1      OPC=nop            
  nop                             #  33    0x2887b  1      OPC=nop            
  nop                             #  34    0x2887c  1      OPC=nop            
  nop                             #  35    0x2887d  1      OPC=nop            
  nop                             #  36    0x2887e  1      OPC=nop            
  nop                             #  37    0x2887f  1      OPC=nop            
.L_28880:                         #        0x28880  0      OPC=<label>        
  movl %r12d, %eax                #  38    0x28880  3      OPC=movl_r32_r32   
  movl %eax, %eax                 #  39    0x28883  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %eax        #  40    0x28885  4      OPC=movl_r32_m32   
  movl %eax, %eax                 #  41    0x28889  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rax,1), %edi     #  42    0x2888b  5      OPC=movl_r32_m32   
  movl %r13d, %esi                #  43    0x28890  3      OPC=movl_r32_r32   
  nop                             #  44    0x28893  1      OPC=nop            
  nop                             #  45    0x28894  1      OPC=nop            
  nop                             #  46    0x28895  1      OPC=nop            
  nop                             #  47    0x28896  1      OPC=nop            
  nop                             #  48    0x28897  1      OPC=nop            
  nop                             #  49    0x28898  1      OPC=nop            
  nop                             #  50    0x28899  1      OPC=nop            
  nop                             #  51    0x2889a  1      OPC=nop            
  callq .List_Add                 #  52    0x2889b  5      OPC=callq_label    
  addl $0x1, %ebx                 #  53    0x288a0  3      OPC=addl_r32_imm8  
  subl $0x4, %r12d                #  54    0x288a3  4      OPC=subl_r32_imm8  
  cmpl %ebx, %r14d                #  55    0x288a7  3      OPC=cmpl_r32_r32   
  jns .L_28880                    #  56    0x288aa  2      OPC=jns_label      
  nop                             #  57    0x288ac  1      OPC=nop            
  nop                             #  58    0x288ad  1      OPC=nop            
  nop                             #  59    0x288ae  1      OPC=nop            
  nop                             #  60    0x288af  1      OPC=nop            
  nop                             #  61    0x288b0  1      OPC=nop            
  nop                             #  62    0x288b1  1      OPC=nop            
  nop                             #  63    0x288b2  1      OPC=nop            
  nop                             #  64    0x288b3  1      OPC=nop            
  nop                             #  65    0x288b4  1      OPC=nop            
  nop                             #  66    0x288b5  1      OPC=nop            
  nop                             #  67    0x288b6  1      OPC=nop            
  nop                             #  68    0x288b7  1      OPC=nop            
  nop                             #  69    0x288b8  1      OPC=nop            
  nop                             #  70    0x288b9  1      OPC=nop            
  nop                             #  71    0x288ba  1      OPC=nop            
  nop                             #  72    0x288bb  1      OPC=nop            
  nop                             #  73    0x288bc  1      OPC=nop            
  nop                             #  74    0x288bd  1      OPC=nop            
  nop                             #  75    0x288be  1      OPC=nop            
  nop                             #  76    0x288bf  1      OPC=nop            
.L_288c0:                         #        0x288c0  0      OPC=<label>        
  movl %r13d, %r13d               #  77    0x288c0  3      OPC=movl_r32_r32   
  movb $0xff, 0xc(%r15,%r13,1)    #  78    0x288c3  6      OPC=movb_m8_imm8   
  movl %r13d, %edi                #  79    0x288c9  3      OPC=movl_r32_r32   
  addl $0x8, %esp                 #  80    0x288cc  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                 #  81    0x288cf  3      OPC=addq_r64_r64   
  popq %rbx                       #  82    0x288d2  1      OPC=popq_r64_1     
  popq %r12                       #  83    0x288d3  2      OPC=popq_r64_1     
  popq %r13                       #  84    0x288d5  2      OPC=popq_r64_1     
  popq %r14                       #  85    0x288d7  2      OPC=popq_r64_1     
  jmpq .IncrementalAdd            #  86    0x288d9  5      OPC=jmpq_label_1   
  xchgw %ax, %ax                  #  87    0x288de  2      OPC=xchgw_ax_r16   
                                                                              
.size AddConstraint, .-AddConstraint

