  .text
  .globl _ZNSirsEPFRSt8ios_baseS0_E
  .type _ZNSirsEPFRSt8ios_baseS0_E, @function

#! file-offset 0xa6e20
#! rip-offset  0x66e20
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt8ios_baseS0_E:  #        0x66e20  0      OPC=<label>         
  pushq %rbx                  #  1     0x66e20  1      OPC=pushq_r64_1     
  movl %edi, %ebx             #  2     0x66e21  2      OPC=movl_r32_r32    
  movl %esi, %esi             #  3     0x66e23  2      OPC=movl_r32_r32    
  movl %ebx, %ebx             #  4     0x66e25  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax    #  5     0x66e27  4      OPC=movl_r32_m32    
  subl $0xc, %eax             #  6     0x66e2b  3      OPC=subl_r32_imm8   
  movl %eax, %eax             #  7     0x66e2e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi    #  8     0x66e30  4      OPC=movl_r32_m32    
  addl %ebx, %edi             #  9     0x66e34  2      OPC=addl_r32_r32    
  xchgw %ax, %ax              #  10    0x66e36  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi      #  11    0x66e38  6      OPC=andl_r32_imm32  
  nop                         #  12    0x66e3e  1      OPC=nop             
  nop                         #  13    0x66e3f  1      OPC=nop             
  nop                         #  14    0x66e40  1      OPC=nop             
  addq %r15, %rsi             #  15    0x66e41  3      OPC=addq_r64_r64    
  callq %rsi                  #  16    0x66e44  2      OPC=callq_r64       
  movl %ebx, %eax             #  17    0x66e46  2      OPC=movl_r32_r32    
  popq %rbx                   #  18    0x66e48  1      OPC=popq_r64_1      
  popq %r11                   #  19    0x66e49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  20    0x66e4b  7      OPC=andl_r32_imm32  
  nop                         #  21    0x66e52  1      OPC=nop             
  nop                         #  22    0x66e53  1      OPC=nop             
  nop                         #  23    0x66e54  1      OPC=nop             
  nop                         #  24    0x66e55  1      OPC=nop             
  addq %r15, %r11             #  25    0x66e56  3      OPC=addq_r64_r64    
  jmpq %r11                   #  26    0x66e59  3      OPC=jmpq_r64        
  nop                         #  27    0x66e5c  1      OPC=nop             
  nop                         #  28    0x66e5d  1      OPC=nop             
  nop                         #  29    0x66e5e  1      OPC=nop             
  nop                         #  30    0x66e5f  1      OPC=nop             
  nop                         #  31    0x66e60  1      OPC=nop             
  nop                         #  32    0x66e61  1      OPC=nop             
  nop                         #  33    0x66e62  1      OPC=nop             
  nop                         #  34    0x66e63  1      OPC=nop             
  nop                         #  35    0x66e64  1      OPC=nop             
  nop                         #  36    0x66e65  1      OPC=nop             
  nop                         #  37    0x66e66  1      OPC=nop             
  nop                         #  38    0x66e67  1      OPC=nop             
  nop                         #  39    0x66e68  1      OPC=nop             
  nop                         #  40    0x66e69  1      OPC=nop             
  nop                         #  41    0x66e6a  1      OPC=nop             
  nop                         #  42    0x66e6b  1      OPC=nop             
  nop                         #  43    0x66e6c  1      OPC=nop             
                                                                           
.size _ZNSirsEPFRSt8ios_baseS0_E, .-_ZNSirsEPFRSt8ios_baseS0_E

