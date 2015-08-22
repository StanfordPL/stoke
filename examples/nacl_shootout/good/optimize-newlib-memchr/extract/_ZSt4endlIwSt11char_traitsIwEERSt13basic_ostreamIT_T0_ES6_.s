  .text
  .globl _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_
  .type _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, @function

#! file-offset 0xe8600
#! rip-offset  0xa8600
#! capacity    160 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_:  #        0xa8600  0      OPC=<label>         
  pushq %rbx                                                  #  1     0xa8600  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                             #  2     0xa8601  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                             #  3     0xa8603  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                    #  4     0xa8605  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                             #  5     0xa8609  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                             #  6     0xa860c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                    #  7     0xa860e  4      OPC=movl_r32_m32    
  addl %ebx, %eax                                             #  8     0xa8612  2      OPC=addl_r32_r32    
  movl %eax, %eax                                             #  9     0xa8614  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rax,1), %edi                                #  10    0xa8616  8      OPC=movl_r32_m32    
  xchgw %ax, %ax                                              #  11    0xa861e  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                                            #  12    0xa8620  3      OPC=testq_r64_r64   
  je .L_a8680                                                 #  13    0xa8623  2      OPC=je_label        
  movl %edi, %edi                                             #  14    0xa8625  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                    #  15    0xa8627  4      OPC=movl_r32_m32    
  movl $0xa, %esi                                             #  16    0xa862b  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                             #  17    0xa8630  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                                #  18    0xa8632  5      OPC=movl_r32_m32    
  nop                                                         #  19    0xa8637  1      OPC=nop             
  andl $0xffffffe0, %eax                                      #  20    0xa8638  6      OPC=andl_r32_imm32  
  nop                                                         #  21    0xa863e  1      OPC=nop             
  nop                                                         #  22    0xa863f  1      OPC=nop             
  nop                                                         #  23    0xa8640  1      OPC=nop             
  addq %r15, %rax                                             #  24    0xa8641  3      OPC=addq_r64_r64    
  callq %rax                                                  #  25    0xa8644  2      OPC=callq_r64       
  movl %ebx, %edi                                             #  26    0xa8646  2      OPC=movl_r32_r32    
  movl %eax, %esi                                             #  27    0xa8648  2      OPC=movl_r32_r32    
  nop                                                         #  28    0xa864a  1      OPC=nop             
  nop                                                         #  29    0xa864b  1      OPC=nop             
  nop                                                         #  30    0xa864c  1      OPC=nop             
  nop                                                         #  31    0xa864d  1      OPC=nop             
  nop                                                         #  32    0xa864e  1      OPC=nop             
  nop                                                         #  33    0xa864f  1      OPC=nop             
  nop                                                         #  34    0xa8650  1      OPC=nop             
  nop                                                         #  35    0xa8651  1      OPC=nop             
  nop                                                         #  36    0xa8652  1      OPC=nop             
  nop                                                         #  37    0xa8653  1      OPC=nop             
  nop                                                         #  38    0xa8654  1      OPC=nop             
  nop                                                         #  39    0xa8655  1      OPC=nop             
  nop                                                         #  40    0xa8656  1      OPC=nop             
  nop                                                         #  41    0xa8657  1      OPC=nop             
  nop                                                         #  42    0xa8658  1      OPC=nop             
  nop                                                         #  43    0xa8659  1      OPC=nop             
  nop                                                         #  44    0xa865a  1      OPC=nop             
  nop                                                         #  45    0xa865b  1      OPC=nop             
  nop                                                         #  46    0xa865c  1      OPC=nop             
  nop                                                         #  47    0xa865d  1      OPC=nop             
  nop                                                         #  48    0xa865e  1      OPC=nop             
  nop                                                         #  49    0xa865f  1      OPC=nop             
  nop                                                         #  50    0xa8660  1      OPC=nop             
  callq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE3putEw      #  51    0xa8661  5      OPC=callq_label     
  popq %rbx                                                   #  52    0xa8666  1      OPC=popq_r64_1      
  movl %eax, %edi                                             #  53    0xa8667  2      OPC=movl_r32_r32    
  jmpq ._ZNSt13basic_ostreamIwSt11char_traitsIwEE5flushEv     #  54    0xa8669  5      OPC=jmpq_label_1    
  nop                                                         #  55    0xa866e  1      OPC=nop             
  nop                                                         #  56    0xa866f  1      OPC=nop             
  nop                                                         #  57    0xa8670  1      OPC=nop             
  nop                                                         #  58    0xa8671  1      OPC=nop             
  nop                                                         #  59    0xa8672  1      OPC=nop             
  nop                                                         #  60    0xa8673  1      OPC=nop             
  nop                                                         #  61    0xa8674  1      OPC=nop             
  nop                                                         #  62    0xa8675  1      OPC=nop             
  nop                                                         #  63    0xa8676  1      OPC=nop             
  nop                                                         #  64    0xa8677  1      OPC=nop             
  nop                                                         #  65    0xa8678  1      OPC=nop             
  nop                                                         #  66    0xa8679  1      OPC=nop             
  nop                                                         #  67    0xa867a  1      OPC=nop             
  nop                                                         #  68    0xa867b  1      OPC=nop             
  nop                                                         #  69    0xa867c  1      OPC=nop             
  nop                                                         #  70    0xa867d  1      OPC=nop             
  nop                                                         #  71    0xa867e  1      OPC=nop             
  nop                                                         #  72    0xa867f  1      OPC=nop             
  nop                                                         #  73    0xa8680  1      OPC=nop             
  nop                                                         #  74    0xa8681  1      OPC=nop             
  nop                                                         #  75    0xa8682  1      OPC=nop             
  nop                                                         #  76    0xa8683  1      OPC=nop             
  nop                                                         #  77    0xa8684  1      OPC=nop             
  nop                                                         #  78    0xa8685  1      OPC=nop             
.L_a8680:                                                     #        0xa8686  0      OPC=<label>         
  nop                                                         #  79    0xa8686  1      OPC=nop             
  nop                                                         #  80    0xa8687  1      OPC=nop             
  nop                                                         #  81    0xa8688  1      OPC=nop             
  nop                                                         #  82    0xa8689  1      OPC=nop             
  nop                                                         #  83    0xa868a  1      OPC=nop             
  nop                                                         #  84    0xa868b  1      OPC=nop             
  nop                                                         #  85    0xa868c  1      OPC=nop             
  nop                                                         #  86    0xa868d  1      OPC=nop             
  nop                                                         #  87    0xa868e  1      OPC=nop             
  nop                                                         #  88    0xa868f  1      OPC=nop             
  nop                                                         #  89    0xa8690  1      OPC=nop             
  nop                                                         #  90    0xa8691  1      OPC=nop             
  nop                                                         #  91    0xa8692  1      OPC=nop             
  nop                                                         #  92    0xa8693  1      OPC=nop             
  nop                                                         #  93    0xa8694  1      OPC=nop             
  nop                                                         #  94    0xa8695  1      OPC=nop             
  nop                                                         #  95    0xa8696  1      OPC=nop             
  nop                                                         #  96    0xa8697  1      OPC=nop             
  nop                                                         #  97    0xa8698  1      OPC=nop             
  nop                                                         #  98    0xa8699  1      OPC=nop             
  nop                                                         #  99    0xa869a  1      OPC=nop             
  nop                                                         #  100   0xa869b  1      OPC=nop             
  nop                                                         #  101   0xa869c  1      OPC=nop             
  nop                                                         #  102   0xa869d  1      OPC=nop             
  nop                                                         #  103   0xa869e  1      OPC=nop             
  nop                                                         #  104   0xa869f  1      OPC=nop             
  nop                                                         #  105   0xa86a0  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                              #  106   0xa86a1  5      OPC=callq_label     
                                                                                                           
.size _ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_, .-_ZSt4endlIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_

