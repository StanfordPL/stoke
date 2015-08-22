  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, @function

#! file-offset 0xdc1c0
#! rip-offset  0x9c1c0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci:  #        0x9c1c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                             #  1     0x9c1c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                    #  2     0x9c1c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                              #  3     0x9c1c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                   #  4     0x9c1cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  5     0x9c1cf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  6     0x9c1d2  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %ecx                                       #  7     0x9c1d4  5      OPC=movl_r32_m32    
  movl %esi, %r12d                                                   #  8     0x9c1d9  3      OPC=movl_r32_r32    
  movl %r12d, %edi                                                   #  9     0x9c1dc  3      OPC=movl_r32_r32    
  nop                                                                #  10    0x9c1df  1      OPC=nop             
  movl $0x1, %esi                                                    #  11    0x9c1e0  5      OPC=movl_r32_imm32  
  nop                                                                #  12    0x9c1e5  1      OPC=nop             
  nop                                                                #  13    0x9c1e6  1      OPC=nop             
  nop                                                                #  14    0x9c1e7  1      OPC=nop             
  nop                                                                #  15    0x9c1e8  1      OPC=nop             
  nop                                                                #  16    0x9c1e9  1      OPC=nop             
  nop                                                                #  17    0x9c1ea  1      OPC=nop             
  nop                                                                #  18    0x9c1eb  1      OPC=nop             
  nop                                                                #  19    0x9c1ec  1      OPC=nop             
  nop                                                                #  20    0x9c1ed  1      OPC=nop             
  nop                                                                #  21    0x9c1ee  1      OPC=nop             
  nop                                                                #  22    0x9c1ef  1      OPC=nop             
  nop                                                                #  23    0x9c1f0  1      OPC=nop             
  nop                                                                #  24    0x9c1f1  1      OPC=nop             
  nop                                                                #  25    0x9c1f2  1      OPC=nop             
  nop                                                                #  26    0x9c1f3  1      OPC=nop             
  nop                                                                #  27    0x9c1f4  1      OPC=nop             
  nop                                                                #  28    0x9c1f5  1      OPC=nop             
  nop                                                                #  29    0x9c1f6  1      OPC=nop             
  nop                                                                #  30    0x9c1f7  1      OPC=nop             
  nop                                                                #  31    0x9c1f8  1      OPC=nop             
  nop                                                                #  32    0x9c1f9  1      OPC=nop             
  nop                                                                #  33    0x9c1fa  1      OPC=nop             
  callq .fread                                                       #  34    0x9c1fb  5      OPC=callq_label     
  testl %eax, %eax                                                   #  35    0x9c200  2      OPC=testl_r32_r32   
  jle .L_9c240                                                       #  36    0x9c202  2      OPC=jle_label       
  leal -0x1(%rax,%r12,1), %r12d                                      #  37    0x9c204  5      OPC=leal_r32_m16    
  movl %r12d, %r12d                                                  #  38    0x9c209  3      OPC=movl_r32_r32    
  movzbl (%r15,%r12,1), %edx                                         #  39    0x9c20c  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                    #  40    0x9c211  2      OPC=movl_r32_r32    
  movl %edx, 0x24(%r15,%rbx,1)                                       #  41    0x9c213  5      OPC=movl_m32_r32    
  nop                                                                #  42    0x9c218  1      OPC=nop             
  nop                                                                #  43    0x9c219  1      OPC=nop             
  nop                                                                #  44    0x9c21a  1      OPC=nop             
  nop                                                                #  45    0x9c21b  1      OPC=nop             
  nop                                                                #  46    0x9c21c  1      OPC=nop             
  nop                                                                #  47    0x9c21d  1      OPC=nop             
  nop                                                                #  48    0x9c21e  1      OPC=nop             
  nop                                                                #  49    0x9c21f  1      OPC=nop             
.L_9c220:                                                            #        0x9c220  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                                               #  50    0x9c220  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                              #  51    0x9c225  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                   #  52    0x9c22a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  53    0x9c22d  3      OPC=addq_r64_r64    
  popq %r11                                                          #  54    0x9c230  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  55    0x9c232  7      OPC=andl_r32_imm32  
  nop                                                                #  56    0x9c239  1      OPC=nop             
  nop                                                                #  57    0x9c23a  1      OPC=nop             
  nop                                                                #  58    0x9c23b  1      OPC=nop             
  nop                                                                #  59    0x9c23c  1      OPC=nop             
  addq %r15, %r11                                                    #  60    0x9c23d  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  61    0x9c240  3      OPC=jmpq_r64        
  nop                                                                #  62    0x9c243  1      OPC=nop             
  nop                                                                #  63    0x9c244  1      OPC=nop             
  nop                                                                #  64    0x9c245  1      OPC=nop             
  nop                                                                #  65    0x9c246  1      OPC=nop             
.L_9c240:                                                            #        0x9c247  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  66    0x9c247  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                #  67    0x9c249  9      OPC=movl_m32_imm32  
  jmpq .L_9c220                                                      #  68    0x9c252  2      OPC=jmpq_label      
  nop                                                                #  69    0x9c254  1      OPC=nop             
  nop                                                                #  70    0x9c255  1      OPC=nop             
  nop                                                                #  71    0x9c256  1      OPC=nop             
  nop                                                                #  72    0x9c257  1      OPC=nop             
  nop                                                                #  73    0x9c258  1      OPC=nop             
  nop                                                                #  74    0x9c259  1      OPC=nop             
  nop                                                                #  75    0x9c25a  1      OPC=nop             
  nop                                                                #  76    0x9c25b  1      OPC=nop             
  nop                                                                #  77    0x9c25c  1      OPC=nop             
  nop                                                                #  78    0x9c25d  1      OPC=nop             
  nop                                                                #  79    0x9c25e  1      OPC=nop             
  nop                                                                #  80    0x9c25f  1      OPC=nop             
  nop                                                                #  81    0x9c260  1      OPC=nop             
  nop                                                                #  82    0x9c261  1      OPC=nop             
  nop                                                                #  83    0x9c262  1      OPC=nop             
  nop                                                                #  84    0x9c263  1      OPC=nop             
  nop                                                                #  85    0x9c264  1      OPC=nop             
  nop                                                                #  86    0x9c265  1      OPC=nop             
  nop                                                                #  87    0x9c266  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci

