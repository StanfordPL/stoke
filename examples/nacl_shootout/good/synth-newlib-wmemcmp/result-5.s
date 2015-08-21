  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    61 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.wmemcmp:                          #        0     0      OPC=<label>         
  nop                              #  1     0     1      OPC=nop             
  nop                              #  2     0x1   1      OPC=nop             
  testq %rdx, %rdx                 #  3     0x2   3      OPC=testq_r64_r64   
  je .L_2d                         #  4     0x5   2      OPC=je_label        
  xorl %eax, %eax                  #  5     0x7   2      OPC=xorl_r32_r32    
  leal (%rdi), %r8d                #  6     0x9   3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %r8d          #  7     0xc   4      OPC=movl_r32_m32    
  leal (%rsi), %ecx                #  8     0x10  2      OPC=leal_r32_m64    
  movl (%r15,%rcx,1), %ecx         #  9     0x12  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d                  #  10    0x16  3      OPC=cmpl_r32_r32    
  jne .L_30                        #  11    0x19  2      OPC=jne_label       
  nop                              #  12    0x1b  1      OPC=nop             
  nop                              #  13    0x1c  1      OPC=nop             
  jmpq .L_24                       #  14    0x1d  2      OPC=jmpq_label      
  nop                              #  15    0x1f  1      OPC=nop             
.L_18:                             #        0x20  0      OPC=<label>         
  nop                              #  16    0x20  1      OPC=nop             
  leal (%rdi,%rax,4), %r8d         #  17    0x21  4      OPC=leal_r32_m16    
  xorl (%r15,%r8,1), %r8d          #  18    0x25  4      OPC=xorl_r32_m32    
  orl (%r15,%r8,1), %edi           #  19    0x29  4      OPC=orl_r32_m32     
  subl $0xf8, %edi                 #  20    0x2d  3      OPC=subl_r32_imm8   
  subl $0xfffffffe, (%r15,%rdi,1)  #  21    0x30  8      OPC=subl_m32_imm32  
  nop                              #  22    0x38  1      OPC=nop             
  nop                              #  23    0x39  1      OPC=nop             
  nop                              #  24    0x3a  1      OPC=nop             
  nop                              #  25    0x3b  1      OPC=nop             
  nop                              #  26    0x3c  1      OPC=nop             
  nop                              #  27    0x3d  1      OPC=nop             
  jne .L_30                        #  28    0x3e  2      OPC=jne_label       
.L_24:                             #        0x40  0      OPC=<label>         
  nop                              #  29    0x40  1      OPC=nop             
  orq $0x1, %rax                   #  30    0x41  4      OPC=orq_r64_imm8    
  nop                              #  31    0x45  1      OPC=nop             
  nopl %eax                        #  32    0x46  3      OPC=nopl_r32        
  nopl %eax                        #  33    0x49  3      OPC=nopl_r32        
  nop                              #  34    0x4c  1      OPC=nop             
  sarb $0x1, %r15b                 #  35    0x4d  3      OPC=sarb_r8_one     
  cmpq %rdx, %rax                  #  36    0x50  3      OPC=cmpq_r64_r64    
  nop                              #  37    0x53  1      OPC=nop             
  jne .L_18                        #  38    0x54  2      OPC=jne_label       
  nop                              #  39    0x56  1      OPC=nop             
  nopl %eax                        #  40    0x57  3      OPC=nopl_r32        
  nop                              #  41    0x5a  1      OPC=nop             
  nop                              #  42    0x5b  1      OPC=nop             
  nop                              #  43    0x5c  1      OPC=nop             
  nop                              #  44    0x5d  1      OPC=nop             
  nop                              #  45    0x5e  1      OPC=nop             
  nop                              #  46    0x5f  1      OPC=nop             
.L_2d:                             #        0x60  0      OPC=<label>         
  nop                              #  47    0x60  1      OPC=nop             
  nop                              #  48    0x61  1      OPC=nop             
  nop                              #  49    0x62  1      OPC=nop             
  nop                              #  50    0x63  1      OPC=nop             
  xorl %eax, %eax                  #  51    0x64  2      OPC=xorl_r32_r32    
  nop                              #  52    0x66  1      OPC=nop             
  nop                              #  53    0x67  1      OPC=nop             
  nop                              #  54    0x68  1      OPC=nop             
  nop                              #  55    0x69  1      OPC=nop             
  nop                              #  56    0x6a  1      OPC=nop             
  nop                              #  57    0x6b  1      OPC=nop             
  nop                              #  58    0x6c  1      OPC=nop             
  nop                              #  59    0x6d  1      OPC=nop             
  nop                              #  60    0x6e  1      OPC=nop             
  nopl %eax                        #  61    0x6f  3      OPC=nopl_r32        
  popq %r11                        #  62    0x72  2      OPC=popq_r64_1      
  andl $0xe0, %r11d                #  63    0x74  4      OPC=andl_r32_imm8   
  addq %r15, %r11                  #  64    0x78  3      OPC=addq_r64_r64    
  jmpq %r11                        #  65    0x7b  3      OPC=jmpq_r64        
  nop                              #  66    0x7e  1      OPC=nop             
  nop                              #  67    0x7f  1      OPC=nop             
.L_30:                             #        0x80  0      OPC=<label>         
  setg %al                         #  68    0x80  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax     #  69    0x83  4      OPC=leal_r32_m16    
  popq %r11                        #  70    0x87  2      OPC=popq_r64_1      
  andl $0xe0, %r11d                #  71    0x89  4      OPC=andl_r32_imm8   
  addq %r15, %r11                  #  72    0x8d  3      OPC=addq_r64_r64    
  jmpq %r11                        #  73    0x90  3      OPC=jmpq_r64        
                                                                             
.size wmemcmp, .-wmemcmp
