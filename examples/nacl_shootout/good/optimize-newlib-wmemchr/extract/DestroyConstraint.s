  .text
  .globl DestroyConstraint
  .type DestroyConstraint, @function

#! file-offset 0x67c80
#! rip-offset  0x27c80
#! capacity    192 bytes

# Text                            #  Line  RIP      Bytes  Opcode             
.DestroyConstraint:               #        0x27c80  0      OPC=<label>        
  pushq %r14                      #  1     0x27c80  2      OPC=pushq_r64_1    
  pushq %r13                      #  2     0x27c82  2      OPC=pushq_r64_1    
  pushq %r12                      #  3     0x27c84  2      OPC=pushq_r64_1    
  pushq %rbx                      #  4     0x27c86  1      OPC=pushq_r64_1    
  subl $0x8, %esp                 #  5     0x27c87  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                 #  6     0x27c8a  3      OPC=addq_r64_r64   
  movl %edi, %r13d                #  7     0x27c8d  3      OPC=movl_r32_r32   
  movl %r13d, %r13d               #  8     0x27c90  3      OPC=movl_r32_r32   
  cmpb $0xff, 0xc(%r15,%r13,1)    #  9     0x27c93  6      OPC=cmpb_m8_imm8   
  je .L_27cc0                     #  10    0x27c99  2      OPC=je_label       
  movl %r13d, %edi                #  11    0x27c9b  3      OPC=movl_r32_r32   
  xchgw %ax, %ax                  #  12    0x27c9e  2      OPC=xchgw_ax_r16   
  nop                             #  13    0x27ca0  1      OPC=nop            
  nop                             #  14    0x27ca1  1      OPC=nop            
  nop                             #  15    0x27ca2  1      OPC=nop            
  nop                             #  16    0x27ca3  1      OPC=nop            
  nop                             #  17    0x27ca4  1      OPC=nop            
  nop                             #  18    0x27ca5  1      OPC=nop            
  nop                             #  19    0x27ca6  1      OPC=nop            
  nop                             #  20    0x27ca7  1      OPC=nop            
  nop                             #  21    0x27ca8  1      OPC=nop            
  nop                             #  22    0x27ca9  1      OPC=nop            
  nop                             #  23    0x27caa  1      OPC=nop            
  nop                             #  24    0x27cab  1      OPC=nop            
  nop                             #  25    0x27cac  1      OPC=nop            
  nop                             #  26    0x27cad  1      OPC=nop            
  nop                             #  27    0x27cae  1      OPC=nop            
  nop                             #  28    0x27caf  1      OPC=nop            
  nop                             #  29    0x27cb0  1      OPC=nop            
  nop                             #  30    0x27cb1  1      OPC=nop            
  nop                             #  31    0x27cb2  1      OPC=nop            
  nop                             #  32    0x27cb3  1      OPC=nop            
  nop                             #  33    0x27cb4  1      OPC=nop            
  nop                             #  34    0x27cb5  1      OPC=nop            
  nop                             #  35    0x27cb6  1      OPC=nop            
  nop                             #  36    0x27cb7  1      OPC=nop            
  nop                             #  37    0x27cb8  1      OPC=nop            
  nop                             #  38    0x27cb9  1      OPC=nop            
  nop                             #  39    0x27cba  1      OPC=nop            
  callq .IncrementalRemove        #  40    0x27cbb  5      OPC=callq_label    
.L_27cc0:                         #        0x27cc0  0      OPC=<label>        
  movl %r13d, %r13d               #  41    0x27cc0  3      OPC=movl_r32_r32   
  movsbl 0xe(%r15,%r13,1), %r12d  #  42    0x27cc3  6      OPC=movsbl_r32_m8  
  movl %r12d, %r14d               #  43    0x27cc9  3      OPC=movl_r32_r32   
  subl $0x1, %r14d                #  44    0x27ccc  4      OPC=subl_r32_imm8  
  js .L_27d20                     #  45    0x27cd0  2      OPC=js_label       
  leal 0x14(%r13,%r12,4), %r12d   #  46    0x27cd2  5      OPC=leal_r32_m16   
  xorl %ebx, %ebx                 #  47    0x27cd7  2      OPC=xorl_r32_r32   
  nop                             #  48    0x27cd9  1      OPC=nop            
  nop                             #  49    0x27cda  1      OPC=nop            
  nop                             #  50    0x27cdb  1      OPC=nop            
  nop                             #  51    0x27cdc  1      OPC=nop            
  nop                             #  52    0x27cdd  1      OPC=nop            
  nop                             #  53    0x27cde  1      OPC=nop            
  nop                             #  54    0x27cdf  1      OPC=nop            
.L_27ce0:                         #        0x27ce0  0      OPC=<label>        
  movl %r12d, %eax                #  55    0x27ce0  3      OPC=movl_r32_r32   
  movl %eax, %eax                 #  56    0x27ce3  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %eax        #  57    0x27ce5  4      OPC=movl_r32_m32   
  movl %eax, %eax                 #  58    0x27ce9  2      OPC=movl_r32_r32   
  movl 0x4(%r15,%rax,1), %edi     #  59    0x27ceb  5      OPC=movl_r32_m32   
  movl %r13d, %esi                #  60    0x27cf0  3      OPC=movl_r32_r32   
  nop                             #  61    0x27cf3  1      OPC=nop            
  nop                             #  62    0x27cf4  1      OPC=nop            
  nop                             #  63    0x27cf5  1      OPC=nop            
  nop                             #  64    0x27cf6  1      OPC=nop            
  nop                             #  65    0x27cf7  1      OPC=nop            
  nop                             #  66    0x27cf8  1      OPC=nop            
  nop                             #  67    0x27cf9  1      OPC=nop            
  nop                             #  68    0x27cfa  1      OPC=nop            
  callq .List_Remove              #  69    0x27cfb  5      OPC=callq_label    
  addl $0x1, %ebx                 #  70    0x27d00  3      OPC=addl_r32_imm8  
  subl $0x4, %r12d                #  71    0x27d03  4      OPC=subl_r32_imm8  
  cmpl %ebx, %r14d                #  72    0x27d07  3      OPC=cmpl_r32_r32   
  jns .L_27ce0                    #  73    0x27d0a  2      OPC=jns_label      
  nop                             #  74    0x27d0c  1      OPC=nop            
  nop                             #  75    0x27d0d  1      OPC=nop            
  nop                             #  76    0x27d0e  1      OPC=nop            
  nop                             #  77    0x27d0f  1      OPC=nop            
  nop                             #  78    0x27d10  1      OPC=nop            
  nop                             #  79    0x27d11  1      OPC=nop            
  nop                             #  80    0x27d12  1      OPC=nop            
  nop                             #  81    0x27d13  1      OPC=nop            
  nop                             #  82    0x27d14  1      OPC=nop            
  nop                             #  83    0x27d15  1      OPC=nop            
  nop                             #  84    0x27d16  1      OPC=nop            
  nop                             #  85    0x27d17  1      OPC=nop            
  nop                             #  86    0x27d18  1      OPC=nop            
  nop                             #  87    0x27d19  1      OPC=nop            
  nop                             #  88    0x27d1a  1      OPC=nop            
  nop                             #  89    0x27d1b  1      OPC=nop            
  nop                             #  90    0x27d1c  1      OPC=nop            
  nop                             #  91    0x27d1d  1      OPC=nop            
  nop                             #  92    0x27d1e  1      OPC=nop            
  nop                             #  93    0x27d1f  1      OPC=nop            
.L_27d20:                         #        0x27d20  0      OPC=<label>        
  movl %r13d, %edi                #  94    0x27d20  3      OPC=movl_r32_r32   
  addl $0x8, %esp                 #  95    0x27d23  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                 #  96    0x27d26  3      OPC=addq_r64_r64   
  popq %rbx                       #  97    0x27d29  1      OPC=popq_r64_1     
  popq %r12                       #  98    0x27d2a  2      OPC=popq_r64_1     
  popq %r13                       #  99    0x27d2c  2      OPC=popq_r64_1     
  popq %r14                       #  100   0x27d2e  2      OPC=popq_r64_1     
  jmpq .Constraint_Destroy        #  101   0x27d30  5      OPC=jmpq_label_1   
  nop                             #  102   0x27d35  1      OPC=nop            
  nop                             #  103   0x27d36  1      OPC=nop            
  nop                             #  104   0x27d37  1      OPC=nop            
  nop                             #  105   0x27d38  1      OPC=nop            
  nop                             #  106   0x27d39  1      OPC=nop            
  nop                             #  107   0x27d3a  1      OPC=nop            
  nop                             #  108   0x27d3b  1      OPC=nop            
  nop                             #  109   0x27d3c  1      OPC=nop            
  nop                             #  110   0x27d3d  1      OPC=nop            
  nop                             #  111   0x27d3e  1      OPC=nop            
  nop                             #  112   0x27d3f  1      OPC=nop            
                                                                              
.size DestroyConstraint, .-DestroyConstraint

