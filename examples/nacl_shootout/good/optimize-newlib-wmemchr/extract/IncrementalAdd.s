  .text
  .globl IncrementalAdd
  .type IncrementalAdd, @function

#! file-offset 0x687a0
#! rip-offset  0x287a0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.IncrementalAdd:               #        0x287a0  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x287a0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x287a3  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x287a6  2      OPC=movl_r32_r32    
  addl $0x1, 0x10048995(%rip)  #  4     0x287a8  7      OPC=addl_m32_imm8   
  xchgw %ax, %ax               #  5     0x287af  2      OPC=xchgw_ax_r16    
  nop                          #  6     0x287b1  1      OPC=nop             
  nop                          #  7     0x287b2  1      OPC=nop             
  nop                          #  8     0x287b3  1      OPC=nop             
  nop                          #  9     0x287b4  1      OPC=nop             
  nop                          #  10    0x287b5  1      OPC=nop             
  nop                          #  11    0x287b6  1      OPC=nop             
  nop                          #  12    0x287b7  1      OPC=nop             
  nop                          #  13    0x287b8  1      OPC=nop             
  nop                          #  14    0x287b9  1      OPC=nop             
  nop                          #  15    0x287ba  1      OPC=nop             
  nop                          #  16    0x287bb  1      OPC=nop             
  nop                          #  17    0x287bc  1      OPC=nop             
  nop                          #  18    0x287bd  1      OPC=nop             
  nop                          #  19    0x287be  1      OPC=nop             
  nop                          #  20    0x287bf  1      OPC=nop             
.L_287c0:                      #        0x287c0  0      OPC=<label>         
  nop                          #  21    0x287c0  1      OPC=nop             
  nop                          #  22    0x287c1  1      OPC=nop             
  nop                          #  23    0x287c2  1      OPC=nop             
  nop                          #  24    0x287c3  1      OPC=nop             
  nop                          #  25    0x287c4  1      OPC=nop             
  nop                          #  26    0x287c5  1      OPC=nop             
  nop                          #  27    0x287c6  1      OPC=nop             
  nop                          #  28    0x287c7  1      OPC=nop             
  nop                          #  29    0x287c8  1      OPC=nop             
  nop                          #  30    0x287c9  1      OPC=nop             
  nop                          #  31    0x287ca  1      OPC=nop             
  nop                          #  32    0x287cb  1      OPC=nop             
  nop                          #  33    0x287cc  1      OPC=nop             
  nop                          #  34    0x287cd  1      OPC=nop             
  nop                          #  35    0x287ce  1      OPC=nop             
  nop                          #  36    0x287cf  1      OPC=nop             
  nop                          #  37    0x287d0  1      OPC=nop             
  nop                          #  38    0x287d1  1      OPC=nop             
  nop                          #  39    0x287d2  1      OPC=nop             
  nop                          #  40    0x287d3  1      OPC=nop             
  nop                          #  41    0x287d4  1      OPC=nop             
  nop                          #  42    0x287d5  1      OPC=nop             
  nop                          #  43    0x287d6  1      OPC=nop             
  nop                          #  44    0x287d7  1      OPC=nop             
  nop                          #  45    0x287d8  1      OPC=nop             
  nop                          #  46    0x287d9  1      OPC=nop             
  nop                          #  47    0x287da  1      OPC=nop             
  callq .Satisfy               #  48    0x287db  5      OPC=callq_label     
  movl %eax, %edi              #  49    0x287e0  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  50    0x287e2  3      OPC=testq_r64_r64   
  jne .L_287c0                 #  51    0x287e5  2      OPC=jne_label       
  addl $0x8, %esp              #  52    0x287e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  53    0x287ea  3      OPC=addq_r64_r64    
  popq %r11                    #  54    0x287ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  55    0x287ef  7      OPC=andl_r32_imm32  
  nop                          #  56    0x287f6  1      OPC=nop             
  nop                          #  57    0x287f7  1      OPC=nop             
  nop                          #  58    0x287f8  1      OPC=nop             
  nop                          #  59    0x287f9  1      OPC=nop             
  addq %r15, %r11              #  60    0x287fa  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x287fd  3      OPC=jmpq_r64        
  nop                          #  62    0x28800  1      OPC=nop             
  nop                          #  63    0x28801  1      OPC=nop             
  nop                          #  64    0x28802  1      OPC=nop             
  nop                          #  65    0x28803  1      OPC=nop             
  nop                          #  66    0x28804  1      OPC=nop             
  nop                          #  67    0x28805  1      OPC=nop             
  nop                          #  68    0x28806  1      OPC=nop             
                                                                            
.size IncrementalAdd, .-IncrementalAdd

