  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, @function

#! file-offset 0xb7ec0
#! rip-offset  0x77ec0
#! capacity    96 bytes

# Text                                                                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece:  #        0x77ec0  0      OPC=<label>         
  movl %edi, %edi                                                                         #  1     0x77ec0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                         #  2     0x77ec2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                         #  3     0x77ec5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                         #  4     0x77ec8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                         #  5     0x77eca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                #  6     0x77ecc  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                        #  7     0x77ed0  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                       #  8     0x77ed3  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                         #  9     0x77ed7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                             #  10    0x77ed9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                          #  11    0x77ede  2      OPC=xchgw_ax_r16    
  nop                                                                                     #  12    0x77ee0  1      OPC=nop             
  nop                                                                                     #  13    0x77ee1  1      OPC=nop             
  nop                                                                                     #  14    0x77ee2  1      OPC=nop             
  nop                                                                                     #  15    0x77ee3  1      OPC=nop             
  nop                                                                                     #  16    0x77ee4  1      OPC=nop             
  nop                                                                                     #  17    0x77ee5  1      OPC=nop             
  nop                                                                                     #  18    0x77ee6  1      OPC=nop             
  nop                                                                                     #  19    0x77ee7  1      OPC=nop             
  nop                                                                                     #  20    0x77ee8  1      OPC=nop             
  nop                                                                                     #  21    0x77ee9  1      OPC=nop             
  nop                                                                                     #  22    0x77eea  1      OPC=nop             
  nop                                                                                     #  23    0x77eeb  1      OPC=nop             
  nop                                                                                     #  24    0x77eec  1      OPC=nop             
  nop                                                                                     #  25    0x77eed  1      OPC=nop             
  nop                                                                                     #  26    0x77eee  1      OPC=nop             
  nop                                                                                     #  27    0x77eef  1      OPC=nop             
  nop                                                                                     #  28    0x77ef0  1      OPC=nop             
  nop                                                                                     #  29    0x77ef1  1      OPC=nop             
  nop                                                                                     #  30    0x77ef2  1      OPC=nop             
  nop                                                                                     #  31    0x77ef3  1      OPC=nop             
  nop                                                                                     #  32    0x77ef4  1      OPC=nop             
  nop                                                                                     #  33    0x77ef5  1      OPC=nop             
  nop                                                                                     #  34    0x77ef6  1      OPC=nop             
  nop                                                                                     #  35    0x77ef7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                  #  36    0x77ef8  6      OPC=andl_r32_imm32  
  nop                                                                                     #  37    0x77efe  1      OPC=nop             
  nop                                                                                     #  38    0x77eff  1      OPC=nop             
  nop                                                                                     #  39    0x77f00  1      OPC=nop             
  addq %r15, %rax                                                                         #  40    0x77f01  3      OPC=addq_r64_r64    
  callq %rax                                                                              #  41    0x77f04  2      OPC=callq_r64       
  addl $0x8, %esp                                                                         #  42    0x77f06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                         #  43    0x77f09  3      OPC=addq_r64_r64    
  popq %r11                                                                               #  44    0x77f0c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                 #  45    0x77f0e  7      OPC=andl_r32_imm32  
  nop                                                                                     #  46    0x77f15  1      OPC=nop             
  nop                                                                                     #  47    0x77f16  1      OPC=nop             
  nop                                                                                     #  48    0x77f17  1      OPC=nop             
  nop                                                                                     #  49    0x77f18  1      OPC=nop             
  addq %r15, %r11                                                                         #  50    0x77f19  3      OPC=addq_r64_r64    
  jmpq %r11                                                                               #  51    0x77f1c  3      OPC=jmpq_r64        
  nop                                                                                     #  52    0x77f1f  1      OPC=nop             
  nop                                                                                     #  53    0x77f20  1      OPC=nop             
  nop                                                                                     #  54    0x77f21  1      OPC=nop             
  nop                                                                                     #  55    0x77f22  1      OPC=nop             
  nop                                                                                     #  56    0x77f23  1      OPC=nop             
  nop                                                                                     #  57    0x77f24  1      OPC=nop             
  nop                                                                                     #  58    0x77f25  1      OPC=nop             
  nop                                                                                     #  59    0x77f26  1      OPC=nop             
  nop                                                                                     #  60    0x77f27  1      OPC=nop             
  nop                                                                                     #  61    0x77f28  1      OPC=nop             
  nop                                                                                     #  62    0x77f29  1      OPC=nop             
  nop                                                                                     #  63    0x77f2a  1      OPC=nop             
  nop                                                                                     #  64    0x77f2b  1      OPC=nop             
  nop                                                                                     #  65    0x77f2c  1      OPC=nop             
                                                                                                                                       
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basece

