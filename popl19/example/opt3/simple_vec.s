  .text
  .globl simple_vec
  .type simple_vec, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    112 bytes

# Text                         #  Line  RIP   Bytes  Opcode             
.simple_vec:                   #        0     0      OPC=<label>        
  cmpq %rdi, %rsi              #  1     0     3      OPC=cmpq_r64_r64   
  movq %rdi, %rax              #  2     0x3   3      OPC=movq_r64_r64   
  ja .L_19                     #  3     0x6   2      OPC=ja_label       
  jmpq .L_60                   #  4     0x8   2      OPC=jmpq_label     
  nop                          #  5     0xa   1      OPC=nop            
  nop                          #  6     0xb   1      OPC=nop            
  nop                          #  7     0xc   1      OPC=nop            
  nop                          #  8     0xd   1      OPC=nop            
  nop                          #  9     0xe   1      OPC=nop            
  nop                          #  10    0xf   1      OPC=nop            
.L_10:                         #        0x10  0      OPC=<label>        
  addq $0x1, %rax              #  11    0x10  4      OPC=addq_r64_imm8  
  cmpq %rax, %rsi              #  12    0x14  3      OPC=cmpq_r64_r64   
  jbe .L_50                    #  13    0x17  2      OPC=jbe_label      
.L_19:                         #        0x19  0      OPC=<label>        
  testb $0x3, %al              #  14    0x19  2      OPC=testb_al_imm8  
  jne .L_10                    #  15    0x1b  2      OPC=jne_label      
  movq %rsi, %rdx              #  16    0x1d  3      OPC=movq_r64_r64   
  subq %rax, %rdx              #  17    0x20  3      OPC=subq_r64_r64   
  cmpq $0x3, %rdx              #  18    0x23  4      OPC=cmpq_r64_imm8  
  jbe .L_40                    #  19    0x27  2      OPC=jbe_label      
.L_29:                         #        0x29  0      OPC=<label>        
  leaq -0x4(%rsi), %rdx        #  20    0x29  4      OPC=leaq_r64_m16   
  subq %rax, %rdx              #  21    0x2d  3      OPC=subq_r64_r64   
  andq $0xfffffffc, %rdx       #  22    0x30  4      OPC=andq_r64_imm8  
  leaq 0x4(%rdx,%rax,1), %rax  #  23    0x34  5      OPC=leaq_r64_m16   
  cmpq %rax, %rsi              #  24    0x39  3      OPC=cmpq_r64_r64   
  jbe .L_60                    #  25    0x3c  2      OPC=jbe_label      
  xchgw %ax, %ax               #  26    0x3e  2      OPC=xchgw_r16_ax   
.L_40:                         #        0x40  0      OPC=<label>        
  addq $0x1, %rax              #  27    0x40  4      OPC=addq_r64_imm8  
  cmpq %rax, %rsi              #  28    0x44  3      OPC=cmpq_r64_r64   
  ja .L_40                     #  29    0x47  2      OPC=ja_label       
  nop                          #  30    0x49  1      OPC=nop            
  retq                         #  31    0x4a  1      OPC=retq           
  nop                          #  32    0x4b  1      OPC=nop            
  nop                          #  33    0x4c  1      OPC=nop            
  nop                          #  34    0x4d  1      OPC=nop            
  nop                          #  35    0x4e  1      OPC=nop            
  nop                          #  36    0x4f  1      OPC=nop            
.L_50:                         #        0x50  0      OPC=<label>        
  movq %rsi, %rdx              #  37    0x50  3      OPC=movq_r64_r64   
  subq %rax, %rdx              #  38    0x53  3      OPC=subq_r64_r64   
  cmpq $0x3, %rdx              #  39    0x56  4      OPC=cmpq_r64_imm8  
  ja .L_29                     #  40    0x5a  2      OPC=ja_label       
  nop                          #  41    0x5c  1      OPC=nop            
  nop                          #  42    0x5d  1      OPC=nop            
  nop                          #  43    0x5e  1      OPC=nop            
  nop                          #  44    0x5f  1      OPC=nop            
.L_60:                         #        0x60  0      OPC=<label>        
  nop                          #  45    0x60  1      OPC=nop            
  retq                         #  46    0x61  1      OPC=retq           
  nop                          #  47    0x62  1      OPC=nop            
  nop                          #  48    0x63  1      OPC=nop            
  nop                          #  49    0x64  1      OPC=nop            
  nop                          #  50    0x65  1      OPC=nop            
  nop                          #  51    0x66  1      OPC=nop            
  nop                          #  52    0x67  1      OPC=nop            
  nop                          #  53    0x68  1      OPC=nop            
  nop                          #  54    0x69  1      OPC=nop            
  nop                          #  55    0x6a  1      OPC=nop            
  nop                          #  56    0x6b  1      OPC=nop            
  nop                          #  57    0x6c  1      OPC=nop            
  nop                          #  58    0x6d  1      OPC=nop            
  nop                          #  59    0x6e  1      OPC=nop            
  nop                          #  60    0x6f  1      OPC=nop            
                                                                        
.size simple_vec, .-simple_vec

