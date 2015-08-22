  .text
  .globl AddConstraint
  .type AddConstraint, @function

#! file-offset 0x68da0
#! rip-offset  0x28da0
#! capacity    160 bytes

# Text                            #  Line  RIP      Bytes  Opcode             
.AddConstraint:                   #        0x28da0  0      OPC=<label>        
  pushq %r14                      #  1     0x28da0  2      OPC=pushq_r64_1    
  pushq %r13                      #  2     0x28da2  2      OPC=pushq_r64_1    
  pushq %r12                      #  3     0x28da4  2      OPC=pushq_r64_1    
  pushq %rbx                      #  4     0x28da6  1      OPC=pushq_r64_1    
  subl $0x8, %esp                 #  5     0x28da7  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                 #  6     0x28daa  3      OPC=addq_r64_r64   
  movl %edi, %r13d                #  7     0x28dad  3      OPC=movl_r32_r32   
  movl %r13d, %r13d               #  8     0x28db0  3      OPC=movl_r32_r32   
  movsbl 0xe(%r15,%r13,1), %r12d  #  9     0x28db3  6      OPC=movsbl_r32_m8  
  movl %r12d, %r14d               #  10    0x28db9  3      OPC=movl_r32_r32   
  subl $0x1, %r14d                #  11    0x28dbc  4      OPC=subl_r32_imm8  
  js .L_28e20                     #  12    0x28dc0  2      OPC=js_label       
  leal 0x14(%r13,%r12,4), %r12d   #  13    0x28dc2  5      OPC=leal_r32_m16   
  xorl %ebx, %ebx                 #  14    0x28dc7  2      OPC=xorl_r32_r32   
  nop                             #  15    0x28dc9  1      OPC=nop            
  nop                             #  16    0x28dca  1      OPC=nop            
  nop                             #  17    0x28dcb  1      OPC=nop            
  nop                             #  18    0x28dcc  1      OPC=nop            
  nop                             #  19    0x28dcd  1      OPC=nop            
  nop                             #  20    0x28dce  1      OPC=nop            
  nop                             #  21    0x28dcf  1      OPC=nop            
  nop                             #  22    0x28dd0  1      OPC=nop            
  nop                             #  23    0x28dd1  1      OPC=nop            
  nop                             #  24    0x28dd2  1      OPC=nop            
  nop                             #  25    0x28dd3  1      OPC=nop            
  nop                             #  26    0x28dd4  1      OPC=nop            
  nop                             #  27    0x28dd5  1      OPC=nop            
  nop                             #  28    0x28dd6  1      OPC=nop            
  nop                             #  29    0x28dd7  1      OPC=nop            
  nop                             #  30    0x28dd8  1      OPC=nop            
  nop                             #  31    0x28dd9  1      OPC=nop            
  nop                             #  32    0x28dda  1      OPC=nop            
  nop                             #  33    0x28ddb  1      OPC=nop            
  nop                             #  34    0x28ddc  1      OPC=nop            
  nop                             #  35    0x28ddd  1      OPC=nop            
  nop                             #  36    0x28dde  1      OPC=nop            
  nop                             #  37    0x28ddf  1      OPC=nop            
.L_28de0:                         #        0x28de0  0      OPC=<label>        
  movl %r12d, %eax                #  38    0x28de0  3      OPC=movl_r32_r32   
  movl %eax, %eax                 #  39    0x28de3  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %eax        #  40    0x28de5  4      OPC=movl_r32_m32   
  movl %eax, %eax                 #  41    0x28de9  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rax,1), %edi     #  42    0x28deb  5      OPC=movl_r32_m32   
  movl %r13d, %esi                #  43    0x28df0  3      OPC=movl_r32_r32   
  nop                             #  44    0x28df3  1      OPC=nop            
  nop                             #  45    0x28df4  1      OPC=nop            
  nop                             #  46    0x28df5  1      OPC=nop            
  nop                             #  47    0x28df6  1      OPC=nop            
  nop                             #  48    0x28df7  1      OPC=nop            
  nop                             #  49    0x28df8  1      OPC=nop            
  nop                             #  50    0x28df9  1      OPC=nop            
  nop                             #  51    0x28dfa  1      OPC=nop            
  callq .List_Add                 #  52    0x28dfb  5      OPC=callq_label    
  addl $0x1, %ebx                 #  53    0x28e00  3      OPC=addl_r32_imm8  
  subl $0x4, %r12d                #  54    0x28e03  4      OPC=subl_r32_imm8  
  cmpl %ebx, %r14d                #  55    0x28e07  3      OPC=cmpl_r32_r32   
  jns .L_28de0                    #  56    0x28e0a  2      OPC=jns_label      
  nop                             #  57    0x28e0c  1      OPC=nop            
  nop                             #  58    0x28e0d  1      OPC=nop            
  nop                             #  59    0x28e0e  1      OPC=nop            
  nop                             #  60    0x28e0f  1      OPC=nop            
  nop                             #  61    0x28e10  1      OPC=nop            
  nop                             #  62    0x28e11  1      OPC=nop            
  nop                             #  63    0x28e12  1      OPC=nop            
  nop                             #  64    0x28e13  1      OPC=nop            
  nop                             #  65    0x28e14  1      OPC=nop            
  nop                             #  66    0x28e15  1      OPC=nop            
  nop                             #  67    0x28e16  1      OPC=nop            
  nop                             #  68    0x28e17  1      OPC=nop            
  nop                             #  69    0x28e18  1      OPC=nop            
  nop                             #  70    0x28e19  1      OPC=nop            
  nop                             #  71    0x28e1a  1      OPC=nop            
  nop                             #  72    0x28e1b  1      OPC=nop            
  nop                             #  73    0x28e1c  1      OPC=nop            
  nop                             #  74    0x28e1d  1      OPC=nop            
  nop                             #  75    0x28e1e  1      OPC=nop            
  nop                             #  76    0x28e1f  1      OPC=nop            
.L_28e20:                         #        0x28e20  0      OPC=<label>        
  movl %r13d, %r13d               #  77    0x28e20  3      OPC=movl_r32_r32   
  movb $0xff, 0xc(%r15,%r13,1)    #  78    0x28e23  6      OPC=movb_m8_imm8   
  movl %r13d, %edi                #  79    0x28e29  3      OPC=movl_r32_r32   
  addl $0x8, %esp                 #  80    0x28e2c  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                 #  81    0x28e2f  3      OPC=addq_r64_r64   
  popq %rbx                       #  82    0x28e32  1      OPC=popq_r64_1     
  popq %r12                       #  83    0x28e33  2      OPC=popq_r64_1     
  popq %r13                       #  84    0x28e35  2      OPC=popq_r64_1     
  popq %r14                       #  85    0x28e37  2      OPC=popq_r64_1     
  jmpq .IncrementalAdd            #  86    0x28e39  5      OPC=jmpq_label_1   
  xchgw %ax, %ax                  #  87    0x28e3e  2      OPC=xchgw_ax_r16   
                                                                              
.size AddConstraint, .-AddConstraint

