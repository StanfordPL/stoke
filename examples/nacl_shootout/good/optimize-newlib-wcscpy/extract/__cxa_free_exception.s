  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x122a20
#! rip-offset  0xe2a20
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  Opcode                
.__cxa_free_exception:        #        0xe2a20  0      OPC=<label>           
  movl %edi, %edi             #  1     0xe2a20  2      OPC=movl_r32_r32      
  movl $0x100740a0, %ecx      #  2     0xe2a22  5      OPC=movl_r32_imm32    
  cmpl %edi, %ecx             #  3     0xe2a27  2      OPC=cmpl_r32_r32      
  ja .L_e2a40                 #  4     0xe2a29  2      OPC=ja_label          
  leal 0x4000(%rcx), %eax     #  5     0xe2a2b  6      OPC=leal_r32_m16      
  cmpl %edi, %eax             #  6     0xe2a31  2      OPC=cmpl_r32_r32      
  ja .L_e2a60                 #  7     0xe2a33  2      OPC=ja_label          
  nop                         #  8     0xe2a35  1      OPC=nop               
  nop                         #  9     0xe2a36  1      OPC=nop               
  nop                         #  10    0xe2a37  1      OPC=nop               
  nop                         #  11    0xe2a38  1      OPC=nop               
  nop                         #  12    0xe2a39  1      OPC=nop               
  nop                         #  13    0xe2a3a  1      OPC=nop               
  nop                         #  14    0xe2a3b  1      OPC=nop               
  nop                         #  15    0xe2a3c  1      OPC=nop               
  nop                         #  16    0xe2a3d  1      OPC=nop               
  nop                         #  17    0xe2a3e  1      OPC=nop               
  nop                         #  18    0xe2a3f  1      OPC=nop               
.L_e2a40:                     #        0xe2a40  0      OPC=<label>           
  subl $0x60, %edi            #  19    0xe2a40  3      OPC=subl_r32_imm8     
  jmpq .free                  #  20    0xe2a43  5      OPC=jmpq_label_1      
  nop                         #  21    0xe2a48  1      OPC=nop               
  nop                         #  22    0xe2a49  1      OPC=nop               
  nop                         #  23    0xe2a4a  1      OPC=nop               
  nop                         #  24    0xe2a4b  1      OPC=nop               
  nop                         #  25    0xe2a4c  1      OPC=nop               
  nop                         #  26    0xe2a4d  1      OPC=nop               
  nop                         #  27    0xe2a4e  1      OPC=nop               
  nop                         #  28    0xe2a4f  1      OPC=nop               
  nop                         #  29    0xe2a50  1      OPC=nop               
  nop                         #  30    0xe2a51  1      OPC=nop               
  nop                         #  31    0xe2a52  1      OPC=nop               
  nop                         #  32    0xe2a53  1      OPC=nop               
  nop                         #  33    0xe2a54  1      OPC=nop               
  nop                         #  34    0xe2a55  1      OPC=nop               
  nop                         #  35    0xe2a56  1      OPC=nop               
  nop                         #  36    0xe2a57  1      OPC=nop               
  nop                         #  37    0xe2a58  1      OPC=nop               
  nop                         #  38    0xe2a59  1      OPC=nop               
  nop                         #  39    0xe2a5a  1      OPC=nop               
  nop                         #  40    0xe2a5b  1      OPC=nop               
  nop                         #  41    0xe2a5c  1      OPC=nop               
  nop                         #  42    0xe2a5d  1      OPC=nop               
  nop                         #  43    0xe2a5e  1      OPC=nop               
  nop                         #  44    0xe2a5f  1      OPC=nop               
.L_e2a60:                     #        0xe2a60  0      OPC=<label>           
  popq %r11                   #  45    0xe2a60  2      OPC=popq_r64_1        
  subl %ecx, %edi             #  46    0xe2a62  2      OPC=subl_r32_r32      
  movl $0xfffffffe, %eax      #  47    0xe2a64  6      OPC=movl_r32_imm32_1  
  movl %edi, %ecx             #  48    0xe2a6a  2      OPC=movl_r32_r32      
  shrl $0x9, %ecx             #  49    0xe2a6c  3      OPC=shrl_r32_imm8     
  roll %cl, %eax              #  50    0xe2a6f  2      OPC=roll_r32_cl       
  andl %eax, 0xff9562a(%rip)  #  51    0xe2a71  6      OPC=andl_m32_r32      
  andl $0xffffffe0, %r11d     #  52    0xe2a77  7      OPC=andl_r32_imm32    
  nop                         #  53    0xe2a7e  1      OPC=nop               
  nop                         #  54    0xe2a7f  1      OPC=nop               
  nop                         #  55    0xe2a80  1      OPC=nop               
  nop                         #  56    0xe2a81  1      OPC=nop               
  addq %r15, %r11             #  57    0xe2a82  3      OPC=addq_r64_r64      
  jmpq %r11                   #  58    0xe2a85  3      OPC=jmpq_r64          
                                                                             
.size __cxa_free_exception, .-__cxa_free_exception

