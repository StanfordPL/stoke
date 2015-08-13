  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEPcPKc
  .type _ZNKSt5ctypeIcE10do_tolowerEPcPKc, @function

#! file-offset 0x124ba0
#! rip-offset  0xe4ba0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_tolowerEPcPKc:  #        0xe4ba0  0      OPC=<label>         
  pushq %r13                         #  1     0xe4ba0  2      OPC=pushq_r64_1     
  movl %edx, %r13d                   #  2     0xe4ba2  3      OPC=movl_r32_r32    
  pushq %r12                         #  3     0xe4ba5  2      OPC=pushq_r64_1     
  movl %edi, %r12d                   #  4     0xe4ba7  3      OPC=movl_r32_r32    
  pushq %rbx                         #  5     0xe4baa  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  6     0xe4bab  2      OPC=movl_r32_r32    
  cmpl %r13d, %ebx                   #  7     0xe4bad  3      OPC=cmpl_r32_r32    
  jae .L_e4c00                       #  8     0xe4bb0  2      OPC=jae_label       
  nop                                #  9     0xe4bb2  1      OPC=nop             
  nop                                #  10    0xe4bb3  1      OPC=nop             
  nop                                #  11    0xe4bb4  1      OPC=nop             
  nop                                #  12    0xe4bb5  1      OPC=nop             
  nop                                #  13    0xe4bb6  1      OPC=nop             
  nop                                #  14    0xe4bb7  1      OPC=nop             
  nop                                #  15    0xe4bb8  1      OPC=nop             
  nop                                #  16    0xe4bb9  1      OPC=nop             
  nop                                #  17    0xe4bba  1      OPC=nop             
  nop                                #  18    0xe4bbb  1      OPC=nop             
  nop                                #  19    0xe4bbc  1      OPC=nop             
  nop                                #  20    0xe4bbd  1      OPC=nop             
  nop                                #  21    0xe4bbe  1      OPC=nop             
  nop                                #  22    0xe4bbf  1      OPC=nop             
.L_e4bc0:                            #        0xe4bc0  0      OPC=<label>         
  movl %r12d, %r12d                  #  23    0xe4bc0  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax           #  24    0xe4bc3  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                    #  25    0xe4bc7  2      OPC=movl_r32_r32    
  movsbl (%r15,%rbx,1), %esi         #  26    0xe4bc9  5      OPC=movsbl_r32_m8   
  movl %r12d, %edi                   #  27    0xe4bce  3      OPC=movl_r32_r32    
  movl %eax, %eax                    #  28    0xe4bd1  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax       #  29    0xe4bd3  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax             #  30    0xe4bd8  6      OPC=andl_r32_imm32  
  nop                                #  31    0xe4bde  1      OPC=nop             
  nop                                #  32    0xe4bdf  1      OPC=nop             
  nop                                #  33    0xe4be0  1      OPC=nop             
  addq %r15, %rax                    #  34    0xe4be1  3      OPC=addq_r64_r64    
  callq %rax                         #  35    0xe4be4  2      OPC=callq_r64       
  movl %ebx, %ebx                    #  36    0xe4be6  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rbx,1)            #  37    0xe4be8  4      OPC=movb_m8_r8      
  addl $0x1, %ebx                    #  38    0xe4bec  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r13d                   #  39    0xe4bef  3      OPC=cmpl_r32_r32    
  ja .L_e4bc0                        #  40    0xe4bf2  2      OPC=ja_label        
  nop                                #  41    0xe4bf4  1      OPC=nop             
  nop                                #  42    0xe4bf5  1      OPC=nop             
  nop                                #  43    0xe4bf6  1      OPC=nop             
  nop                                #  44    0xe4bf7  1      OPC=nop             
  nop                                #  45    0xe4bf8  1      OPC=nop             
  nop                                #  46    0xe4bf9  1      OPC=nop             
  nop                                #  47    0xe4bfa  1      OPC=nop             
  nop                                #  48    0xe4bfb  1      OPC=nop             
  nop                                #  49    0xe4bfc  1      OPC=nop             
  nop                                #  50    0xe4bfd  1      OPC=nop             
  nop                                #  51    0xe4bfe  1      OPC=nop             
  nop                                #  52    0xe4bff  1      OPC=nop             
  nop                                #  53    0xe4c00  1      OPC=nop             
  nop                                #  54    0xe4c01  1      OPC=nop             
  nop                                #  55    0xe4c02  1      OPC=nop             
  nop                                #  56    0xe4c03  1      OPC=nop             
  nop                                #  57    0xe4c04  1      OPC=nop             
  nop                                #  58    0xe4c05  1      OPC=nop             
.L_e4c00:                            #        0xe4c06  0      OPC=<label>         
  popq %rbx                          #  59    0xe4c06  1      OPC=popq_r64_1      
  popq %r12                          #  60    0xe4c07  2      OPC=popq_r64_1      
  movl %r13d, %eax                   #  61    0xe4c09  3      OPC=movl_r32_r32    
  popq %r13                          #  62    0xe4c0c  2      OPC=popq_r64_1      
  popq %r11                          #  63    0xe4c0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  64    0xe4c10  7      OPC=andl_r32_imm32  
  nop                                #  65    0xe4c17  1      OPC=nop             
  nop                                #  66    0xe4c18  1      OPC=nop             
  nop                                #  67    0xe4c19  1      OPC=nop             
  nop                                #  68    0xe4c1a  1      OPC=nop             
  addq %r15, %r11                    #  69    0xe4c1b  3      OPC=addq_r64_r64    
  jmpq %r11                          #  70    0xe4c1e  3      OPC=jmpq_r64        
  nop                                #  71    0xe4c21  1      OPC=nop             
  nop                                #  72    0xe4c22  1      OPC=nop             
  nop                                #  73    0xe4c23  1      OPC=nop             
  nop                                #  74    0xe4c24  1      OPC=nop             
  nop                                #  75    0xe4c25  1      OPC=nop             
  nop                                #  76    0xe4c26  1      OPC=nop             
  nop                                #  77    0xe4c27  1      OPC=nop             
  nop                                #  78    0xe4c28  1      OPC=nop             
  nop                                #  79    0xe4c29  1      OPC=nop             
  nop                                #  80    0xe4c2a  1      OPC=nop             
  nop                                #  81    0xe4c2b  1      OPC=nop             
  nop                                #  82    0xe4c2c  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIcE10do_tolowerEPcPKc, .-_ZNKSt5ctypeIcE10do_tolowerEPcPKc

