  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0xedb00
#! rip-offset  0xadb00
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSs12_S_constructEjcRKSaIcE:          #        0xadb00  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                 #  1     0xadb00  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                 #  2     0xadb05  5      OPC=movq_m64_r64    
  movl $0x1007358c, %r12d                #  3     0xadb0a  6      OPC=movl_r32_imm32  
  movq %r13, -0x10(%rsp)                 #  4     0xadb10  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                  #  5     0xadb15  5      OPC=movq_m64_r64    
  subl $0x38, %esp                       #  6     0xadb1a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  7     0xadb1d  3      OPC=addq_r64_r64    
  testl %edi, %edi                       #  8     0xadb20  2      OPC=testl_r32_r32   
  movl %edi, %ebx                        #  9     0xadb22  2      OPC=movl_r32_r32    
  movl %esi, %r13d                       #  10    0xadb24  3      OPC=movl_r32_r32    
  movl %edx, %edx                        #  11    0xadb27  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                      #  12    0xadb29  3      OPC=movl_r32_r32    
  je .L_adb80                            #  13    0xadb2c  2      OPC=je_label        
  xorl %esi, %esi                        #  14    0xadb2e  2      OPC=xorl_r32_r32    
  movb %r13b, 0x8(%rsp)                  #  15    0xadb30  5      OPC=movb_m8_r8      
  nop                                    #  16    0xadb35  1      OPC=nop             
  nop                                    #  17    0xadb36  1      OPC=nop             
  nop                                    #  18    0xadb37  1      OPC=nop             
  nop                                    #  19    0xadb38  1      OPC=nop             
  nop                                    #  20    0xadb39  1      OPC=nop             
  nop                                    #  21    0xadb3a  1      OPC=nop             
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  22    0xadb3b  5      OPC=callq_label     
  cmpl $0x1, %ebx                        #  23    0xadb40  3      OPC=cmpl_r32_imm8   
  movl %eax, %r14d                       #  24    0xadb43  3      OPC=movl_r32_r32    
  movzbl 0x8(%rsp), %ecx                 #  25    0xadb46  5      OPC=movzbl_r32_m8   
  leal 0xc(%r14), %r12d                  #  26    0xadb4b  4      OPC=leal_r32_m16    
  je .L_adbc0                            #  27    0xadb4f  2      OPC=je_label        
  movsbl %cl, %esi                       #  28    0xadb51  3      OPC=movsbl_r32_r8   
  movl %ebx, %edx                        #  29    0xadb54  2      OPC=movl_r32_r32    
  movl %r12d, %edi                       #  30    0xadb56  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                         #  31    0xadb59  2      OPC=xchgw_ax_r16    
  callq .memset                          #  32    0xadb5b  5      OPC=callq_label     
.L_adb60:                                #        0xadb60  0      OPC=<label>         
  movl %r14d, %r14d                      #  33    0xadb60  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r14,1)               #  34    0xadb63  4      OPC=movl_m32_r32    
  addl %r12d, %ebx                       #  35    0xadb67  3      OPC=addl_r32_r32    
  movl %r14d, %r14d                      #  36    0xadb6a  3      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%r14,1)            #  37    0xadb6d  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                        #  38    0xadb76  2      OPC=movl_r32_r32    
  movb $0x0, (%r15,%rbx,1)               #  39    0xadb78  5      OPC=movb_m8_imm8    
  nop                                    #  40    0xadb7d  1      OPC=nop             
  nop                                    #  41    0xadb7e  1      OPC=nop             
  nop                                    #  42    0xadb7f  1      OPC=nop             
.L_adb80:                                #        0xadb80  0      OPC=<label>         
  movl %r12d, %eax                       #  43    0xadb80  3      OPC=movl_r32_r32    
  movq 0x18(%rsp), %rbx                  #  44    0xadb83  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12                  #  45    0xadb88  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13                  #  46    0xadb8d  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14                  #  47    0xadb92  5      OPC=movq_r64_m64    
  addl $0x38, %esp                       #  48    0xadb97  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  49    0xadb9a  3      OPC=addq_r64_r64    
  popq %r11                              #  50    0xadb9d  2      OPC=popq_r64_1      
  nop                                    #  51    0xadb9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                #  52    0xadba0  7      OPC=andl_r32_imm32  
  nop                                    #  53    0xadba7  1      OPC=nop             
  nop                                    #  54    0xadba8  1      OPC=nop             
  nop                                    #  55    0xadba9  1      OPC=nop             
  nop                                    #  56    0xadbaa  1      OPC=nop             
  addq %r15, %r11                        #  57    0xadbab  3      OPC=addq_r64_r64    
  jmpq %r11                              #  58    0xadbae  3      OPC=jmpq_r64        
  nop                                    #  59    0xadbb1  1      OPC=nop             
  nop                                    #  60    0xadbb2  1      OPC=nop             
  nop                                    #  61    0xadbb3  1      OPC=nop             
  nop                                    #  62    0xadbb4  1      OPC=nop             
  nop                                    #  63    0xadbb5  1      OPC=nop             
  nop                                    #  64    0xadbb6  1      OPC=nop             
  nop                                    #  65    0xadbb7  1      OPC=nop             
  nop                                    #  66    0xadbb8  1      OPC=nop             
  nop                                    #  67    0xadbb9  1      OPC=nop             
  nop                                    #  68    0xadbba  1      OPC=nop             
  nop                                    #  69    0xadbbb  1      OPC=nop             
  nop                                    #  70    0xadbbc  1      OPC=nop             
  nop                                    #  71    0xadbbd  1      OPC=nop             
  nop                                    #  72    0xadbbe  1      OPC=nop             
  nop                                    #  73    0xadbbf  1      OPC=nop             
  nop                                    #  74    0xadbc0  1      OPC=nop             
  nop                                    #  75    0xadbc1  1      OPC=nop             
  nop                                    #  76    0xadbc2  1      OPC=nop             
  nop                                    #  77    0xadbc3  1      OPC=nop             
  nop                                    #  78    0xadbc4  1      OPC=nop             
  nop                                    #  79    0xadbc5  1      OPC=nop             
  nop                                    #  80    0xadbc6  1      OPC=nop             
.L_adbc0:                                #        0xadbc7  0      OPC=<label>         
  movl %r12d, %r12d                      #  81    0xadbc7  3      OPC=movl_r32_r32    
  movb %r13b, (%r15,%r12,1)              #  82    0xadbca  4      OPC=movb_m8_r8      
  jmpq .L_adb60                          #  83    0xadbce  2      OPC=jmpq_label      
  nop                                    #  84    0xadbd0  1      OPC=nop             
  nop                                    #  85    0xadbd1  1      OPC=nop             
  nop                                    #  86    0xadbd2  1      OPC=nop             
  nop                                    #  87    0xadbd3  1      OPC=nop             
  nop                                    #  88    0xadbd4  1      OPC=nop             
  nop                                    #  89    0xadbd5  1      OPC=nop             
  nop                                    #  90    0xadbd6  1      OPC=nop             
  nop                                    #  91    0xadbd7  1      OPC=nop             
  nop                                    #  92    0xadbd8  1      OPC=nop             
  nop                                    #  93    0xadbd9  1      OPC=nop             
  nop                                    #  94    0xadbda  1      OPC=nop             
  nop                                    #  95    0xadbdb  1      OPC=nop             
  nop                                    #  96    0xadbdc  1      OPC=nop             
  nop                                    #  97    0xadbdd  1      OPC=nop             
  nop                                    #  98    0xadbde  1      OPC=nop             
  nop                                    #  99    0xadbdf  1      OPC=nop             
  nop                                    #  100   0xadbe0  1      OPC=nop             
  nop                                    #  101   0xadbe1  1      OPC=nop             
  nop                                    #  102   0xadbe2  1      OPC=nop             
  nop                                    #  103   0xadbe3  1      OPC=nop             
  nop                                    #  104   0xadbe4  1      OPC=nop             
  nop                                    #  105   0xadbe5  1      OPC=nop             
  nop                                    #  106   0xadbe6  1      OPC=nop             
                                                                                      
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

