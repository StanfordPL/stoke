  .text
  .globl IncrementalAdd
  .type IncrementalAdd, @function

#! file-offset 0x68780
#! rip-offset  0x28780
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.IncrementalAdd:               #        0x28780  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x28780  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x28783  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x28786  2      OPC=movl_r32_r32    
  addl $0x1, 0x100489b5(%rip)  #  4     0x28788  7      OPC=addl_m32_imm8   
  xchgw %ax, %ax               #  5     0x2878f  2      OPC=xchgw_ax_r16    
  nop                          #  6     0x28791  1      OPC=nop             
  nop                          #  7     0x28792  1      OPC=nop             
  nop                          #  8     0x28793  1      OPC=nop             
  nop                          #  9     0x28794  1      OPC=nop             
  nop                          #  10    0x28795  1      OPC=nop             
  nop                          #  11    0x28796  1      OPC=nop             
  nop                          #  12    0x28797  1      OPC=nop             
  nop                          #  13    0x28798  1      OPC=nop             
  nop                          #  14    0x28799  1      OPC=nop             
  nop                          #  15    0x2879a  1      OPC=nop             
  nop                          #  16    0x2879b  1      OPC=nop             
  nop                          #  17    0x2879c  1      OPC=nop             
  nop                          #  18    0x2879d  1      OPC=nop             
  nop                          #  19    0x2879e  1      OPC=nop             
  nop                          #  20    0x2879f  1      OPC=nop             
.L_287a0:                      #        0x287a0  0      OPC=<label>         
  nop                          #  21    0x287a0  1      OPC=nop             
  nop                          #  22    0x287a1  1      OPC=nop             
  nop                          #  23    0x287a2  1      OPC=nop             
  nop                          #  24    0x287a3  1      OPC=nop             
  nop                          #  25    0x287a4  1      OPC=nop             
  nop                          #  26    0x287a5  1      OPC=nop             
  nop                          #  27    0x287a6  1      OPC=nop             
  nop                          #  28    0x287a7  1      OPC=nop             
  nop                          #  29    0x287a8  1      OPC=nop             
  nop                          #  30    0x287a9  1      OPC=nop             
  nop                          #  31    0x287aa  1      OPC=nop             
  nop                          #  32    0x287ab  1      OPC=nop             
  nop                          #  33    0x287ac  1      OPC=nop             
  nop                          #  34    0x287ad  1      OPC=nop             
  nop                          #  35    0x287ae  1      OPC=nop             
  nop                          #  36    0x287af  1      OPC=nop             
  nop                          #  37    0x287b0  1      OPC=nop             
  nop                          #  38    0x287b1  1      OPC=nop             
  nop                          #  39    0x287b2  1      OPC=nop             
  nop                          #  40    0x287b3  1      OPC=nop             
  nop                          #  41    0x287b4  1      OPC=nop             
  nop                          #  42    0x287b5  1      OPC=nop             
  nop                          #  43    0x287b6  1      OPC=nop             
  nop                          #  44    0x287b7  1      OPC=nop             
  nop                          #  45    0x287b8  1      OPC=nop             
  nop                          #  46    0x287b9  1      OPC=nop             
  nop                          #  47    0x287ba  1      OPC=nop             
  callq .Satisfy               #  48    0x287bb  5      OPC=callq_label     
  movl %eax, %edi              #  49    0x287c0  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  50    0x287c2  3      OPC=testq_r64_r64   
  jne .L_287a0                 #  51    0x287c5  2      OPC=jne_label       
  addl $0x8, %esp              #  52    0x287c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  53    0x287ca  3      OPC=addq_r64_r64    
  popq %r11                    #  54    0x287cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  55    0x287cf  7      OPC=andl_r32_imm32  
  nop                          #  56    0x287d6  1      OPC=nop             
  nop                          #  57    0x287d7  1      OPC=nop             
  nop                          #  58    0x287d8  1      OPC=nop             
  nop                          #  59    0x287d9  1      OPC=nop             
  addq %r15, %r11              #  60    0x287da  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x287dd  3      OPC=jmpq_r64        
  nop                          #  62    0x287e0  1      OPC=nop             
  nop                          #  63    0x287e1  1      OPC=nop             
  nop                          #  64    0x287e2  1      OPC=nop             
  nop                          #  65    0x287e3  1      OPC=nop             
  nop                          #  66    0x287e4  1      OPC=nop             
  nop                          #  67    0x287e5  1      OPC=nop             
  nop                          #  68    0x287e6  1      OPC=nop             
                                                                            
.size IncrementalAdd, .-IncrementalAdd

