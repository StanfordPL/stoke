  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb, @function

#! file-offset 0xb7ba0
#! rip-offset  0x77ba0
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb:  #        0x77ba0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77ba0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77ba2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77ba5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77ba8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77baa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77bac  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77bb0  3      OPC=movsbl_r32_r8   
  movzbl %r8b, %r8d                                                                    #  8     0x77bb3  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                                                      #  9     0x77bb7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                          #  10    0x77bb9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                       #  11    0x77bbe  2      OPC=xchgw_ax_r16    
  nop                                                                                  #  12    0x77bc0  1      OPC=nop             
  nop                                                                                  #  13    0x77bc1  1      OPC=nop             
  nop                                                                                  #  14    0x77bc2  1      OPC=nop             
  nop                                                                                  #  15    0x77bc3  1      OPC=nop             
  nop                                                                                  #  16    0x77bc4  1      OPC=nop             
  nop                                                                                  #  17    0x77bc5  1      OPC=nop             
  nop                                                                                  #  18    0x77bc6  1      OPC=nop             
  nop                                                                                  #  19    0x77bc7  1      OPC=nop             
  nop                                                                                  #  20    0x77bc8  1      OPC=nop             
  nop                                                                                  #  21    0x77bc9  1      OPC=nop             
  nop                                                                                  #  22    0x77bca  1      OPC=nop             
  nop                                                                                  #  23    0x77bcb  1      OPC=nop             
  nop                                                                                  #  24    0x77bcc  1      OPC=nop             
  nop                                                                                  #  25    0x77bcd  1      OPC=nop             
  nop                                                                                  #  26    0x77bce  1      OPC=nop             
  nop                                                                                  #  27    0x77bcf  1      OPC=nop             
  nop                                                                                  #  28    0x77bd0  1      OPC=nop             
  nop                                                                                  #  29    0x77bd1  1      OPC=nop             
  nop                                                                                  #  30    0x77bd2  1      OPC=nop             
  nop                                                                                  #  31    0x77bd3  1      OPC=nop             
  nop                                                                                  #  32    0x77bd4  1      OPC=nop             
  nop                                                                                  #  33    0x77bd5  1      OPC=nop             
  nop                                                                                  #  34    0x77bd6  1      OPC=nop             
  nop                                                                                  #  35    0x77bd7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  36    0x77bd8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  37    0x77bde  1      OPC=nop             
  nop                                                                                  #  38    0x77bdf  1      OPC=nop             
  nop                                                                                  #  39    0x77be0  1      OPC=nop             
  addq %r15, %rax                                                                      #  40    0x77be1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  41    0x77be4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  42    0x77be6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  43    0x77be9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  44    0x77bec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  45    0x77bee  7      OPC=andl_r32_imm32  
  nop                                                                                  #  46    0x77bf5  1      OPC=nop             
  nop                                                                                  #  47    0x77bf6  1      OPC=nop             
  nop                                                                                  #  48    0x77bf7  1      OPC=nop             
  nop                                                                                  #  49    0x77bf8  1      OPC=nop             
  addq %r15, %r11                                                                      #  50    0x77bf9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  51    0x77bfc  3      OPC=jmpq_r64        
  nop                                                                                  #  52    0x77bff  1      OPC=nop             
  nop                                                                                  #  53    0x77c00  1      OPC=nop             
  nop                                                                                  #  54    0x77c01  1      OPC=nop             
  nop                                                                                  #  55    0x77c02  1      OPC=nop             
  nop                                                                                  #  56    0x77c03  1      OPC=nop             
  nop                                                                                  #  57    0x77c04  1      OPC=nop             
  nop                                                                                  #  58    0x77c05  1      OPC=nop             
  nop                                                                                  #  59    0x77c06  1      OPC=nop             
  nop                                                                                  #  60    0x77c07  1      OPC=nop             
  nop                                                                                  #  61    0x77c08  1      OPC=nop             
  nop                                                                                  #  62    0x77c09  1      OPC=nop             
  nop                                                                                  #  63    0x77c0a  1      OPC=nop             
  nop                                                                                  #  64    0x77c0b  1      OPC=nop             
  nop                                                                                  #  65    0x77c0c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecb

