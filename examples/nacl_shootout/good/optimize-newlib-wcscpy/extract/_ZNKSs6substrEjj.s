  .text
  .globl _ZNKSs6substrEjj
  .type _ZNKSs6substrEjj, @function

#! file-offset 0xeda00
#! rip-offset  0xada00
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs6substrEjj:                      #        0xada00  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xada00  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xada02  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xada03  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xada05  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xada07  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xada0b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xada0e  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %edx              #  8     0xada10  4      OPC=cmpl_r32_m32    
  ja .L_ada40                           #  9     0xada14  2      OPC=ja_label        
  movl %ebx, %edi                       #  10    0xada16  2      OPC=movl_r32_r32    
  nop                                   #  11    0xada18  1      OPC=nop             
  nop                                   #  12    0xada19  1      OPC=nop             
  nop                                   #  13    0xada1a  1      OPC=nop             
  callq ._ZNSsC1ERKSsjj                 #  14    0xada1b  5      OPC=callq_label     
  movl %ebx, %eax                       #  15    0xada20  2      OPC=movl_r32_r32    
  popq %rbx                             #  16    0xada22  1      OPC=popq_r64_1      
  popq %r11                             #  17    0xada23  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  18    0xada25  7      OPC=andl_r32_imm32  
  nop                                   #  19    0xada2c  1      OPC=nop             
  nop                                   #  20    0xada2d  1      OPC=nop             
  nop                                   #  21    0xada2e  1      OPC=nop             
  nop                                   #  22    0xada2f  1      OPC=nop             
  addq %r15, %r11                       #  23    0xada30  3      OPC=addq_r64_r64    
  jmpq %r11                             #  24    0xada33  3      OPC=jmpq_r64        
  xchgw %ax, %ax                        #  25    0xada36  2      OPC=xchgw_ax_r16    
  nop                                   #  26    0xada38  1      OPC=nop             
  nop                                   #  27    0xada39  1      OPC=nop             
  nop                                   #  28    0xada3a  1      OPC=nop             
  nop                                   #  29    0xada3b  1      OPC=nop             
  nop                                   #  30    0xada3c  1      OPC=nop             
  nop                                   #  31    0xada3d  1      OPC=nop             
  nop                                   #  32    0xada3e  1      OPC=nop             
  nop                                   #  33    0xada3f  1      OPC=nop             
  nop                                   #  34    0xada40  1      OPC=nop             
  nop                                   #  35    0xada41  1      OPC=nop             
  nop                                   #  36    0xada42  1      OPC=nop             
  nop                                   #  37    0xada43  1      OPC=nop             
  nop                                   #  38    0xada44  1      OPC=nop             
  nop                                   #  39    0xada45  1      OPC=nop             
  nop                                   #  40    0xada46  1      OPC=nop             
.L_ada40:                               #        0xada47  0      OPC=<label>         
  movl $0x1003bb16, %edi                #  41    0xada47  5      OPC=movl_r32_imm32  
  nop                                   #  42    0xada4c  1      OPC=nop             
  nop                                   #  43    0xada4d  1      OPC=nop             
  nop                                   #  44    0xada4e  1      OPC=nop             
  nop                                   #  45    0xada4f  1      OPC=nop             
  nop                                   #  46    0xada50  1      OPC=nop             
  nop                                   #  47    0xada51  1      OPC=nop             
  nop                                   #  48    0xada52  1      OPC=nop             
  nop                                   #  49    0xada53  1      OPC=nop             
  nop                                   #  50    0xada54  1      OPC=nop             
  nop                                   #  51    0xada55  1      OPC=nop             
  nop                                   #  52    0xada56  1      OPC=nop             
  nop                                   #  53    0xada57  1      OPC=nop             
  nop                                   #  54    0xada58  1      OPC=nop             
  nop                                   #  55    0xada59  1      OPC=nop             
  nop                                   #  56    0xada5a  1      OPC=nop             
  nop                                   #  57    0xada5b  1      OPC=nop             
  nop                                   #  58    0xada5c  1      OPC=nop             
  nop                                   #  59    0xada5d  1      OPC=nop             
  nop                                   #  60    0xada5e  1      OPC=nop             
  nop                                   #  61    0xada5f  1      OPC=nop             
  nop                                   #  62    0xada60  1      OPC=nop             
  nop                                   #  63    0xada61  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  64    0xada62  5      OPC=callq_label     
                                                                                     
.size _ZNKSs6substrEjj, .-_ZNKSs6substrEjj

