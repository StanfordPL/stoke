  .text
  .globl _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_
  .type _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, @function

#! file-offset 0xe7be0
#! rip-offset  0xa7be0
#! capacity    160 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_:  #        0xa7be0  0      OPC=<label>         
  pushq %rbx                                                  #  1     0xa7be0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                             #  2     0xa7be1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                             #  3     0xa7be3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                    #  4     0xa7be5  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                             #  5     0xa7be9  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                             #  6     0xa7bec  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                    #  7     0xa7bee  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                             #  8     0xa7bf2  2      OPC=addl_r32_r32    
  movl %eax, %eax                                             #  9     0xa7bf4  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                #  10    0xa7bf6  8      OPC=movl_r32_m32    
  xchgw %ax, %ax                                              #  11    0xa7bfe  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                                            #  12    0xa7c00  3      OPC=testq_r64_r64   
  je .L_a7c60                                                 #  13    0xa7c03  2      OPC=je_label        
  movl %edi, %edi                                             #  14    0xa7c05  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                    #  15    0xa7c07  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                             #  16    0xa7c0b  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                             #  17    0xa7c10  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                #  18    0xa7c12  5      OPC=movl_r32_m32    
  nop                                                         #  19    0xa7c17  1      OPC=nop             
  andl $0xffffffe0, %eax                                      #  20    0xa7c18  6      OPC=andl_r32_imm32  
  nop                                                         #  21    0xa7c1e  1      OPC=nop             
  nop                                                         #  22    0xa7c1f  1      OPC=nop             
  nop                                                         #  23    0xa7c20  1      OPC=nop             
  addq %r15, %rax                                             #  24    0xa7c21  3      OPC=addq_r64_r64    
  callq %rax                                                  #  25    0xa7c24  2      OPC=callq_r64       
  movl %ebx, %edi                                             #  26    0xa7c26  2      OPC=movl_r32_r32    
  movl %eax, %esi                                             #  27    0xa7c28  2      OPC=movl_r32_r32    
  nop                                                         #  28    0xa7c2a  1      OPC=nop             
  nop                                                         #  29    0xa7c2b  1      OPC=nop             
  nop                                                         #  30    0xa7c2c  1      OPC=nop             
  nop                                                         #  31    0xa7c2d  1      OPC=nop             
  nop                                                         #  32    0xa7c2e  1      OPC=nop             
  nop                                                         #  33    0xa7c2f  1      OPC=nop             
  nop                                                         #  34    0xa7c30  1      OPC=nop             
  nop                                                         #  35    0xa7c31  1      OPC=nop             
  nop                                                         #  36    0xa7c32  1      OPC=nop             
  nop                                                         #  37    0xa7c33  1      OPC=nop             
  nop                                                         #  38    0xa7c34  1      OPC=nop             
  nop                                                         #  39    0xa7c35  1      OPC=nop             
  nop                                                         #  40    0xa7c36  1      OPC=nop             
  nop                                                         #  41    0xa7c37  1      OPC=nop             
  nop                                                         #  42    0xa7c38  1      OPC=nop             
  nop                                                         #  43    0xa7c39  1      OPC=nop             
  nop                                                         #  44    0xa7c3a  1      OPC=nop             
  nop                                                         #  45    0xa7c3b  1      OPC=nop             
  nop                                                         #  46    0xa7c3c  1      OPC=nop             
  nop                                                         #  47    0xa7c3d  1      OPC=nop             
  nop                                                         #  48    0xa7c3e  1      OPC=nop             
  nop                                                         #  49    0xa7c3f  1      OPC=nop             
  nop                                                         #  50    0xa7c40  1      OPC=nop             
  callq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE3putEw      #  51    0xa7c41  5      OPC=callq_label     
  popq %rbx                                                   #  52    0xa7c46  1      OPC=popq_r64_1      
  movl %eax, %edi                                             #  53    0xa7c47  2      OPC=movl_r32_r32    
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE5flushEv     #  54    0xa7c49  5      OPC=jmpq_label_1    
  nop                                                         #  55    0xa7c4e  1      OPC=nop             
  nop                                                         #  56    0xa7c4f  1      OPC=nop             
  nop                                                         #  57    0xa7c50  1      OPC=nop             
  nop                                                         #  58    0xa7c51  1      OPC=nop             
  nop                                                         #  59    0xa7c52  1      OPC=nop             
  nop                                                         #  60    0xa7c53  1      OPC=nop             
  nop                                                         #  61    0xa7c54  1      OPC=nop             
  nop                                                         #  62    0xa7c55  1      OPC=nop             
  nop                                                         #  63    0xa7c56  1      OPC=nop             
  nop                                                         #  64    0xa7c57  1      OPC=nop             
  nop                                                         #  65    0xa7c58  1      OPC=nop             
  nop                                                         #  66    0xa7c59  1      OPC=nop             
  nop                                                         #  67    0xa7c5a  1      OPC=nop             
  nop                                                         #  68    0xa7c5b  1      OPC=nop             
  nop                                                         #  69    0xa7c5c  1      OPC=nop             
  nop                                                         #  70    0xa7c5d  1      OPC=nop             
  nop                                                         #  71    0xa7c5e  1      OPC=nop             
  nop                                                         #  72    0xa7c5f  1      OPC=nop             
  nop                                                         #  73    0xa7c60  1      OPC=nop             
  nop                                                         #  74    0xa7c61  1      OPC=nop             
  nop                                                         #  75    0xa7c62  1      OPC=nop             
  nop                                                         #  76    0xa7c63  1      OPC=nop             
  nop                                                         #  77    0xa7c64  1      OPC=nop             
  nop                                                         #  78    0xa7c65  1      OPC=nop             
.L_a7c60:                                                     #        0xa7c66  0      OPC=<label>         
  nop                                                         #  79    0xa7c66  1      OPC=nop             
  nop                                                         #  80    0xa7c67  1      OPC=nop             
  nop                                                         #  81    0xa7c68  1      OPC=nop             
  nop                                                         #  82    0xa7c69  1      OPC=nop             
  nop                                                         #  83    0xa7c6a  1      OPC=nop             
  nop                                                         #  84    0xa7c6b  1      OPC=nop             
  nop                                                         #  85    0xa7c6c  1      OPC=nop             
  nop                                                         #  86    0xa7c6d  1      OPC=nop             
  nop                                                         #  87    0xa7c6e  1      OPC=nop             
  nop                                                         #  88    0xa7c6f  1      OPC=nop             
  nop                                                         #  89    0xa7c70  1      OPC=nop             
  nop                                                         #  90    0xa7c71  1      OPC=nop             
  nop                                                         #  91    0xa7c72  1      OPC=nop             
  nop                                                         #  92    0xa7c73  1      OPC=nop             
  nop                                                         #  93    0xa7c74  1      OPC=nop             
  nop                                                         #  94    0xa7c75  1      OPC=nop             
  nop                                                         #  95    0xa7c76  1      OPC=nop             
  nop                                                         #  96    0xa7c77  1      OPC=nop             
  nop                                                         #  97    0xa7c78  1      OPC=nop             
  nop                                                         #  98    0xa7c79  1      OPC=nop             
  nop                                                         #  99    0xa7c7a  1      OPC=nop             
  nop                                                         #  100   0xa7c7b  1      OPC=nop             
  nop                                                         #  101   0xa7c7c  1      OPC=nop             
  nop                                                         #  102   0xa7c7d  1      OPC=nop             
  nop                                                         #  103   0xa7c7e  1      OPC=nop             
  nop                                                         #  104   0xa7c7f  1      OPC=nop             
  nop                                                         #  105   0xa7c80  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                              #  106   0xa7c81  5      OPC=callq_label     
                                                                                                           
.size _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, .-_ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_

