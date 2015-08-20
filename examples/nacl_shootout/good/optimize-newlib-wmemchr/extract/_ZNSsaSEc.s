  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0xeeae0
#! rip-offset  0xaeae0
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNSsaSEc:                          #        0xaeae0  0      OPC=<label>         
  pushq %rbx                         #  1     0xaeae0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0xaeae1  2      OPC=movl_r32_r32    
  movsbl %sil, %r8d                  #  3     0xaeae3  4      OPC=movsbl_r32_r8   
  movl %ebx, %ebx                    #  4     0xaeae7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax           #  5     0xaeae9  4      OPC=movl_r32_m32    
  movl %ebx, %edi                    #  6     0xaeaed  2      OPC=movl_r32_r32    
  movl $0x1, %ecx                    #  7     0xaeaef  5      OPC=movl_r32_imm32  
  xorl %esi, %esi                    #  8     0xaeaf4  2      OPC=xorl_r32_r32    
  subl $0xc, %eax                    #  9     0xaeaf6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                    #  10    0xaeaf9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx           #  11    0xaeafb  4      OPC=movl_r32_m32    
  nop                                #  12    0xaeaff  1      OPC=nop             
  nop                                #  13    0xaeb00  1      OPC=nop             
  nop                                #  14    0xaeb01  1      OPC=nop             
  nop                                #  15    0xaeb02  1      OPC=nop             
  nop                                #  16    0xaeb03  1      OPC=nop             
  nop                                #  17    0xaeb04  1      OPC=nop             
  nop                                #  18    0xaeb05  1      OPC=nop             
  nop                                #  19    0xaeb06  1      OPC=nop             
  nop                                #  20    0xaeb07  1      OPC=nop             
  nop                                #  21    0xaeb08  1      OPC=nop             
  nop                                #  22    0xaeb09  1      OPC=nop             
  nop                                #  23    0xaeb0a  1      OPC=nop             
  nop                                #  24    0xaeb0b  1      OPC=nop             
  nop                                #  25    0xaeb0c  1      OPC=nop             
  nop                                #  26    0xaeb0d  1      OPC=nop             
  nop                                #  27    0xaeb0e  1      OPC=nop             
  nop                                #  28    0xaeb0f  1      OPC=nop             
  nop                                #  29    0xaeb10  1      OPC=nop             
  nop                                #  30    0xaeb11  1      OPC=nop             
  nop                                #  31    0xaeb12  1      OPC=nop             
  nop                                #  32    0xaeb13  1      OPC=nop             
  nop                                #  33    0xaeb14  1      OPC=nop             
  nop                                #  34    0xaeb15  1      OPC=nop             
  nop                                #  35    0xaeb16  1      OPC=nop             
  nop                                #  36    0xaeb17  1      OPC=nop             
  nop                                #  37    0xaeb18  1      OPC=nop             
  nop                                #  38    0xaeb19  1      OPC=nop             
  nop                                #  39    0xaeb1a  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc  #  40    0xaeb1b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0xaeb20  2      OPC=movl_r32_r32    
  popq %rbx                          #  42    0xaeb22  1      OPC=popq_r64_1      
  popq %r11                          #  43    0xaeb23  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  44    0xaeb25  7      OPC=andl_r32_imm32  
  nop                                #  45    0xaeb2c  1      OPC=nop             
  nop                                #  46    0xaeb2d  1      OPC=nop             
  nop                                #  47    0xaeb2e  1      OPC=nop             
  nop                                #  48    0xaeb2f  1      OPC=nop             
  addq %r15, %r11                    #  49    0xaeb30  3      OPC=addq_r64_r64    
  jmpq %r11                          #  50    0xaeb33  3      OPC=jmpq_r64        
  nop                                #  51    0xaeb36  1      OPC=nop             
  nop                                #  52    0xaeb37  1      OPC=nop             
  nop                                #  53    0xaeb38  1      OPC=nop             
  nop                                #  54    0xaeb39  1      OPC=nop             
  nop                                #  55    0xaeb3a  1      OPC=nop             
  nop                                #  56    0xaeb3b  1      OPC=nop             
  nop                                #  57    0xaeb3c  1      OPC=nop             
  nop                                #  58    0xaeb3d  1      OPC=nop             
  nop                                #  59    0xaeb3e  1      OPC=nop             
  nop                                #  60    0xaeb3f  1      OPC=nop             
  nop                                #  61    0xaeb40  1      OPC=nop             
  nop                                #  62    0xaeb41  1      OPC=nop             
  nop                                #  63    0xaeb42  1      OPC=nop             
  nop                                #  64    0xaeb43  1      OPC=nop             
  nop                                #  65    0xaeb44  1      OPC=nop             
  nop                                #  66    0xaeb45  1      OPC=nop             
  nop                                #  67    0xaeb46  1      OPC=nop             
                                                                                  
.size _ZNSsaSEc, .-_ZNSsaSEc

