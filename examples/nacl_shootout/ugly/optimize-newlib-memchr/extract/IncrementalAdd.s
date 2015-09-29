  .text
  .globl IncrementalAdd
  .type IncrementalAdd, @function

#! file-offset 0x68d00
#! rip-offset  0x28d00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.IncrementalAdd:               #        0x28d00  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x28d00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x28d03  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x28d06  2      OPC=movl_r32_r32    
  addl $0x1, 0x10048435(%rip)  #  4     0x28d08  7      OPC=addl_m32_imm8   
  xchgw %ax, %ax               #  5     0x28d0f  2      OPC=xchgw_ax_r16    
  nop                          #  6     0x28d11  1      OPC=nop             
  nop                          #  7     0x28d12  1      OPC=nop             
  nop                          #  8     0x28d13  1      OPC=nop             
  nop                          #  9     0x28d14  1      OPC=nop             
  nop                          #  10    0x28d15  1      OPC=nop             
  nop                          #  11    0x28d16  1      OPC=nop             
  nop                          #  12    0x28d17  1      OPC=nop             
  nop                          #  13    0x28d18  1      OPC=nop             
  nop                          #  14    0x28d19  1      OPC=nop             
  nop                          #  15    0x28d1a  1      OPC=nop             
  nop                          #  16    0x28d1b  1      OPC=nop             
  nop                          #  17    0x28d1c  1      OPC=nop             
  nop                          #  18    0x28d1d  1      OPC=nop             
  nop                          #  19    0x28d1e  1      OPC=nop             
  nop                          #  20    0x28d1f  1      OPC=nop             
.L_28d20:                      #        0x28d20  0      OPC=<label>         
  nop                          #  21    0x28d20  1      OPC=nop             
  nop                          #  22    0x28d21  1      OPC=nop             
  nop                          #  23    0x28d22  1      OPC=nop             
  nop                          #  24    0x28d23  1      OPC=nop             
  nop                          #  25    0x28d24  1      OPC=nop             
  nop                          #  26    0x28d25  1      OPC=nop             
  nop                          #  27    0x28d26  1      OPC=nop             
  nop                          #  28    0x28d27  1      OPC=nop             
  nop                          #  29    0x28d28  1      OPC=nop             
  nop                          #  30    0x28d29  1      OPC=nop             
  nop                          #  31    0x28d2a  1      OPC=nop             
  nop                          #  32    0x28d2b  1      OPC=nop             
  nop                          #  33    0x28d2c  1      OPC=nop             
  nop                          #  34    0x28d2d  1      OPC=nop             
  nop                          #  35    0x28d2e  1      OPC=nop             
  nop                          #  36    0x28d2f  1      OPC=nop             
  nop                          #  37    0x28d30  1      OPC=nop             
  nop                          #  38    0x28d31  1      OPC=nop             
  nop                          #  39    0x28d32  1      OPC=nop             
  nop                          #  40    0x28d33  1      OPC=nop             
  nop                          #  41    0x28d34  1      OPC=nop             
  nop                          #  42    0x28d35  1      OPC=nop             
  nop                          #  43    0x28d36  1      OPC=nop             
  nop                          #  44    0x28d37  1      OPC=nop             
  nop                          #  45    0x28d38  1      OPC=nop             
  nop                          #  46    0x28d39  1      OPC=nop             
  nop                          #  47    0x28d3a  1      OPC=nop             
  callq .Satisfy               #  48    0x28d3b  5      OPC=callq_label     
  movl %eax, %edi              #  49    0x28d40  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  50    0x28d42  3      OPC=testq_r64_r64   
  jne .L_28d20                 #  51    0x28d45  2      OPC=jne_label       
  addl $0x8, %esp              #  52    0x28d47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  53    0x28d4a  3      OPC=addq_r64_r64    
  popq %r11                    #  54    0x28d4d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  55    0x28d4f  7      OPC=andl_r32_imm32  
  nop                          #  56    0x28d56  1      OPC=nop             
  nop                          #  57    0x28d57  1      OPC=nop             
  nop                          #  58    0x28d58  1      OPC=nop             
  nop                          #  59    0x28d59  1      OPC=nop             
  addq %r15, %r11              #  60    0x28d5a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x28d5d  3      OPC=jmpq_r64        
  nop                          #  62    0x28d60  1      OPC=nop             
  nop                          #  63    0x28d61  1      OPC=nop             
  nop                          #  64    0x28d62  1      OPC=nop             
  nop                          #  65    0x28d63  1      OPC=nop             
  nop                          #  66    0x28d64  1      OPC=nop             
  nop                          #  67    0x28d65  1      OPC=nop             
  nop                          #  68    0x28d66  1      OPC=nop             
                                                                            
.size IncrementalAdd, .-IncrementalAdd

