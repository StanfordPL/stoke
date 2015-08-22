  .text
  .globl memchr
  .type memchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    228 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.memchr:                          #        0     0      OPC=<label>         
  testb $0x7, %dil                #  1     0     4      OPC=testb_r8_imm8   
  movl %esi, %ecx                 #  2     0x4   2      OPC=movl_r32_r32    
  je .L_dc                        #  3     0x6   6      OPC=je_label_1      
  testq %rdx, %rdx                #  4     0xc   3      OPC=testq_r64_r64   
  leaq -0x1(%rdx), %rax           #  5     0xf   4      OPC=leaq_r64_m16    
  je .L_61                        #  6     0x13  2      OPC=je_label_1
  leal (%rdi), %r9d
  cmpb %sil, (%r15,%r9,1)               #  7     0x15  3      OPC=cmpb_m8_r8      
  jne .L_2d                       #  8     0x18  2      OPC=jne_label_1
  jmpq .L_68                      #  9     0x1a  2      OPC=jmpq_label_1
  nop                             #  10    0x1c  1      OPC=nop             
  nop                             #  11    0x1d  1      OPC=nop             
  nop                             #  12    0x1e  1      OPC=nop             
  nop                             #  13    0x1f  1      OPC=nop             
.L_20:                            #        0x20  0      OPC=<label>         
  testq %rax, %rax                #  14    0x20  3      OPC=testq_r64_r64   
  je .L_61                        #  15    0x23  2      OPC=je_label_1       
  subq $0x1, %rax                 #  16    0x25  4      OPC=subq_r64_imm8   
  leal (%rdi), %r9d
  cmpb %cl, (%r15,%r9,1)                #  17    0x29  2      OPC=cmpb_m8_r8      
  je .L_68                        #  18    0x2b  2      OPC=je_label_1       
.L_2d:                            #        0x2d  0      OPC=<label>         
  addq $0x1, %rdi                 #  19    0x2d  4      OPC=addq_r64_imm8   
  testb $0x7, %dil                #  20    0x31  4      OPC=testb_r8_imm8   
  jne .L_20                       #  21    0x35  2      OPC=jne_label_1      
.L_37:                            #        0x37  0      OPC=<label>         
  cmpq $0x7, %rax                 #  22    0x37  4      OPC=cmpq_r64_imm8   
  ja .L_70                        #  23    0x3b  2      OPC=ja_label_1       
.L_3d:                            #        0x3d  0      OPC=<label>         
  testq %rax, %rax                #  24    0x3d  3      OPC=testq_r64_r64   
  je .L_61                        #  25    0x40  2      OPC=je_label_1       
  addq %rdi, %rax                 #  26    0x42  3      OPC=addq_r64_r64    
  leal (%rdi), %r9d
  cmpb %sil, (%r15,%r9,1)               #  27    0x45  3      OPC=cmpb_m8_r8      
  leaq 0x1(%rdi), %rdx            #  28    0x48  4      OPC=leaq_r64_m16    
  jne .L_59                       #  29    0x4c  2      OPC=jne_label_1      
  jmpq .L_68                      #  30    0x4e  2      OPC=jmpq_label_1     
.L_50:                            #        0x50  0      OPC=<label>         
  addq $0x1, %rdx                 #  31    0x50  4      OPC=addq_r64_imm8   
  leal -0x1(%rdx), %r9d
  cmpb %cl, (%r15,%r9,1)            #  32    0x54  3      OPC=cmpb_m8_r8      
  je .L_68                        #  33    0x57  2      OPC=je_label_1       
.L_59:                            #        0x59  0      OPC=<label>         
  cmpq %rax, %rdx                 #  34    0x59  3      OPC=cmpq_r64_r64    
  movq %rdx, %rdi                 #  35    0x5c  3      OPC=movq_r64_r64    
  jne .L_50                       #  36    0x5f  2      OPC=jne_label_1      
.L_61:                            #        0x61  0      OPC=<label>         
  xorl %eax, %eax                 #  37    0x61  2      OPC=xorl_r32_r32    
  retq                            #  38    0x63  1      OPC=retq            
  nop                             #  39    0x64  1      OPC=nop             
  nop                             #  40    0x65  1      OPC=nop             
  nop                             #  41    0x66  1      OPC=nop             
  nop                             #  42    0x67  1      OPC=nop             
.L_68:                            #        0x68  0      OPC=<label>         
  movq %rdi, %rax                 #  43    0x68  3      OPC=movq_r64_r64    
  retq                            #  44    0x6b  1      OPC=retq            
  nop                             #  45    0x6c  1      OPC=nop             
  nop                             #  46    0x6d  1      OPC=nop             
  nop                             #  47    0x6e  1      OPC=nop             
  nop                             #  48    0x6f  1      OPC=nop             
.L_70:                            #        0x70  0      OPC=<label>         
  movzbl %sil, %edx               #  49    0x70  4      OPC=movzbl_r32_r8   
  movq $0xfefefefefefefeff, %r11  #  50    0x74  10     OPC=movq_r64_imm64  
  movq $0x8080808080808080, %r10  #  51    0x7e  10     OPC=movq_r64_imm64  
  movl %edx, %r8d                 #  52    0x88  3      OPC=movl_r32_r32    
  shll $0x8, %r8d                 #  53    0x8b  4      OPC=shll_r32_imm8   
  orl %r8d, %edx                  #  54    0x8f  3      OPC=orl_r32_r32     
  movslq %edx, %rdx               #  55    0x92  3      OPC=movslq_r64_r32  
  movq %rdx, %r8                  #  56    0x95  3      OPC=movq_r64_r64    
  shlq $0x10, %r8                 #  57    0x98  4      OPC=shlq_r64_imm8   
  orq %r8, %rdx                   #  58    0x9c  3      OPC=orq_r64_r64     
  movq %rdx, %r8                  #  59    0x9f  3      OPC=movq_r64_r64    
  shlq $0x20, %r8                 #  60    0xa2  4      OPC=shlq_r64_imm8   
  orq %rdx, %r8                   #  61    0xa6  3      OPC=orq_r64_r64     
  nop                             #  62    0xa9  1      OPC=nop             
  nop                             #  63    0xaa  1      OPC=nop             
  nop                             #  64    0xab  1      OPC=nop             
  nop                             #  65    0xac  1      OPC=nop             
  nop                             #  66    0xad  1      OPC=nop             
  nop                             #  67    0xae  1      OPC=nop             
  nop                             #  68    0xaf  1      OPC=nop             
.L_b0:                            #        0xb0  0      OPC=<label>         
  movq %r8, %rdx                  #  69    0xb0  3      OPC=movq_r64_r64    
  leal (%rdi), %r9d
  xorq (%r15, %r9, 1), %rdx               #  70    0xb3  3      OPC=xorq_r64_m64    
  leaq (%rdx,%r11,1), %r9         #  71    0xb6  4      OPC=leaq_r64_m16    
  notq %rdx                       #  72    0xba  3      OPC=notq_r64        
  andq %r9, %rdx                  #  73    0xbd  3      OPC=andq_r64_r64    
  testq %r10, %rdx                #  74    0xc0  3      OPC=testq_r64_r64   
  jne .L_3d                       #  75    0xc3  6      OPC=jne_label_1     
  subq $0x8, %rax                 #  76    0xc9  4      OPC=subq_r64_imm8   
  addq $0x8, %rdi                 #  77    0xcd  4      OPC=addq_r64_imm8   
  cmpq $0x7, %rax                 #  78    0xd1  4      OPC=cmpq_r64_imm8   
  ja .L_b0                        #  79    0xd5  2      OPC=ja_label_1       
  jmpq .L_3d                      #  80    0xd7  5      OPC=jmpq_label_1    
.L_dc:                            #        0xdc  0      OPC=<label>         
  movq %rdx, %rax                 #  81    0xdc  3      OPC=movq_r64_r64    
  jmpq .L_37                      #  82    0xdf  5      OPC=jmpq_label_1    
                                                                            
.size memchr, .-memchr

