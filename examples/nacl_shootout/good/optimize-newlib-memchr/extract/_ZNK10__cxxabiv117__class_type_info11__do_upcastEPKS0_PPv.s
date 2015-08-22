  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x123120
#! rip-offset  0xe3120
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0xe3120  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xe3120  1      OPC=pushq_r64_1     
  movl %edi, %edi                                            #  2     0xe3121  2      OPC=movl_r32_r32    
  movl %edx, %ebx                                            #  3     0xe3123  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  4     0xe3125  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                           #  5     0xe3127  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                            #  6     0xe312a  3      OPC=addq_r64_r64    
  movl %edi, %edi                                            #  7     0xe312d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  8     0xe312f  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  9     0xe3133  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                   #  10    0xe3135  4      OPC=movl_r32_m32    
  movl $0x0, (%rsp)                                          #  11    0xe3139  7      OPC=movl_m32_imm32  
  movl $0x0, 0x4(%rsp)                                       #  12    0xe3140  8      OPC=movl_m32_imm32  
  movl %esp, %ecx                                            #  13    0xe3148  2      OPC=movl_r32_r32    
  movl $0x10, 0x8(%rsp)                                      #  14    0xe314a  8      OPC=movl_m32_imm32  
  movl $0x0, 0xc(%rsp)                                       #  15    0xe3152  8      OPC=movl_m32_imm32  
  nop                                                        #  16    0xe315a  1      OPC=nop             
  nop                                                        #  17    0xe315b  1      OPC=nop             
  nop                                                        #  18    0xe315c  1      OPC=nop             
  nop                                                        #  19    0xe315d  1      OPC=nop             
  nop                                                        #  20    0xe315e  1      OPC=nop             
  nop                                                        #  21    0xe315f  1      OPC=nop             
  movl %eax, %eax                                            #  22    0xe3160  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                               #  23    0xe3162  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                             #  24    0xe3167  2      OPC=xchgw_ax_r16    
  nop                                                        #  25    0xe3169  1      OPC=nop             
  nop                                                        #  26    0xe316a  1      OPC=nop             
  nop                                                        #  27    0xe316b  1      OPC=nop             
  nop                                                        #  28    0xe316c  1      OPC=nop             
  nop                                                        #  29    0xe316d  1      OPC=nop             
  nop                                                        #  30    0xe316e  1      OPC=nop             
  nop                                                        #  31    0xe316f  1      OPC=nop             
  nop                                                        #  32    0xe3170  1      OPC=nop             
  nop                                                        #  33    0xe3171  1      OPC=nop             
  nop                                                        #  34    0xe3172  1      OPC=nop             
  nop                                                        #  35    0xe3173  1      OPC=nop             
  nop                                                        #  36    0xe3174  1      OPC=nop             
  nop                                                        #  37    0xe3175  1      OPC=nop             
  nop                                                        #  38    0xe3176  1      OPC=nop             
  nop                                                        #  39    0xe3177  1      OPC=nop             
  andl $0xffffffe0, %eax                                     #  40    0xe3178  6      OPC=andl_r32_imm32  
  nop                                                        #  41    0xe317e  1      OPC=nop             
  nop                                                        #  42    0xe317f  1      OPC=nop             
  nop                                                        #  43    0xe3180  1      OPC=nop             
  addq %r15, %rax                                            #  44    0xe3181  3      OPC=addq_r64_r64    
  callq %rax                                                 #  45    0xe3184  2      OPC=callq_r64       
  movl 0x4(%rsp), %edx                                       #  46    0xe3186  4      OPC=movl_r32_m32    
  xorl %eax, %eax                                            #  47    0xe318a  2      OPC=xorl_r32_r32    
  andl $0x6, %edx                                            #  48    0xe318c  3      OPC=andl_r32_imm8   
  cmpl $0x6, %edx                                            #  49    0xe318f  3      OPC=cmpl_r32_imm8   
  jne .L_e31a0                                               #  50    0xe3192  2      OPC=jne_label       
  movl (%rsp), %eax                                          #  51    0xe3194  3      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  52    0xe3197  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                   #  53    0xe3199  4      OPC=movl_m32_r32    
  movl $0x1, %eax                                            #  54    0xe319d  5      OPC=movl_r32_imm32  
  nop                                                        #  55    0xe31a2  1      OPC=nop             
  nop                                                        #  56    0xe31a3  1      OPC=nop             
  nop                                                        #  57    0xe31a4  1      OPC=nop             
  nop                                                        #  58    0xe31a5  1      OPC=nop             
.L_e31a0:                                                    #        0xe31a6  0      OPC=<label>         
  addl $0x10, %esp                                           #  59    0xe31a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                            #  60    0xe31a9  3      OPC=addq_r64_r64    
  popq %rbx                                                  #  61    0xe31ac  1      OPC=popq_r64_1      
  popq %r11                                                  #  62    0xe31ad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  63    0xe31af  7      OPC=andl_r32_imm32  
  nop                                                        #  64    0xe31b6  1      OPC=nop             
  nop                                                        #  65    0xe31b7  1      OPC=nop             
  nop                                                        #  66    0xe31b8  1      OPC=nop             
  nop                                                        #  67    0xe31b9  1      OPC=nop             
  addq %r15, %r11                                            #  68    0xe31ba  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  69    0xe31bd  3      OPC=jmpq_r64        
  nop                                                        #  70    0xe31c0  1      OPC=nop             
  nop                                                        #  71    0xe31c1  1      OPC=nop             
  nop                                                        #  72    0xe31c2  1      OPC=nop             
  nop                                                        #  73    0xe31c3  1      OPC=nop             
  nop                                                        #  74    0xe31c4  1      OPC=nop             
  nop                                                        #  75    0xe31c5  1      OPC=nop             
  nop                                                        #  76    0xe31c6  1      OPC=nop             
  nop                                                        #  77    0xe31c7  1      OPC=nop             
  nop                                                        #  78    0xe31c8  1      OPC=nop             
  nop                                                        #  79    0xe31c9  1      OPC=nop             
  nop                                                        #  80    0xe31ca  1      OPC=nop             
  nop                                                        #  81    0xe31cb  1      OPC=nop             
  nop                                                        #  82    0xe31cc  1      OPC=nop             
                                                                                                          
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

