  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    61 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wmemcmp:                       #        0     0      OPC=<label>         
  orl %edx, %edx                #  1     0     2      OPC=orl_r32_r32     
  je .L_2d                      #  2     0x2   2      OPC=je_label        
  nop                           #  3     0x4   1      OPC=nop             
  nop                           #  4     0x5   1      OPC=nop             
  nop                           #  5     0x6   1      OPC=nop             
  leal (%rdi), %r8d             #  6     0x7   3      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %r8d       #  7     0xa   4      OPC=movl_r32_m32    
  nop                           #  8     0xe   1      OPC=nop             
  nop                           #  9     0xf   1      OPC=nop             
  leal (%rsi), %ecx             #  10    0x10  2      OPC=leal_r32_m16    
  movl (%r15,%rcx,1), %ecx      #  11    0x12  4      OPC=movl_r32_m32    
  xorl %eax, %eax               #  12    0x16  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  13    0x18  3      OPC=cmpl_r32_r32    
  jne .L_30                     #  14    0x1b  2      OPC=jne_label       
  jmpq .L_24                    #  15    0x1d  2      OPC=jmpq_label      
  nop                           #  16    0x1f  1      OPC=nop             
.L_18:                          #        0x20  0      OPC=<label>         
  addl $0x1, %eax               #  17    0x20  6      OPC=addl_r32_imm32  
  leal (%rdi,%rax,4), %r8d      #  18    0x26  4      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %r8d       #  19    0x2a  4      OPC=movl_r32_m32    
  leal (%rsi,%rax,4), %ecx      #  20    0x2e  3      OPC=leal_r32_m64    
  movl (%r15,%rcx,1), %ecx      #  21    0x31  4      OPC=movl_r32_m32    
  nop                           #  22    0x35  1      OPC=nop             
  nop                           #  23    0x36  1      OPC=nop             
  nop                           #  24    0x37  1      OPC=nop             
  nop                           #  25    0x38  1      OPC=nop             
  nop                           #  26    0x39  1      OPC=nop             
  nop                           #  27    0x3a  1      OPC=nop             
  cmpl %ecx, %r8d               #  28    0x3b  3      OPC=cmpl_r32_r32    
  jne .L_30                     #  29    0x3e  2      OPC=jne_label       
.L_24:                          #        0x40  0      OPC=<label>         
  decq %rdx                     #  30    0x40  3      OPC=decq_r64        
  jne .L_18                     #  31    0x43  2      OPC=jne_label       
  nopl %eax                     #  32    0x45  3      OPC=nopl_r32        
  nop                           #  33    0x48  1      OPC=nop             
  nop                           #  34    0x49  1      OPC=nop             
  nop                           #  35    0x4a  1      OPC=nop             
  nop                           #  36    0x4b  1      OPC=nop             
  nop                           #  37    0x4c  1      OPC=nop             
  nop                           #  38    0x4d  1      OPC=nop             
  nop                           #  39    0x4e  1      OPC=nop             
  nop                           #  40    0x4f  1      OPC=nop             
  nop                           #  41    0x50  1      OPC=nop             
  nop                           #  42    0x51  1      OPC=nop             
  nop                           #  43    0x52  1      OPC=nop             
  nop                           #  44    0x53  1      OPC=nop             
  nop                           #  45    0x54  1      OPC=nop             
  nop                           #  46    0x55  1      OPC=nop             
  nop                           #  47    0x56  1      OPC=nop             
  nop                           #  48    0x57  1      OPC=nop             
  nop                           #  49    0x58  1      OPC=nop             
  nop                           #  50    0x59  1      OPC=nop             
  nop                           #  51    0x5a  1      OPC=nop             
  nop                           #  52    0x5b  1      OPC=nop             
  nop                           #  53    0x5c  1      OPC=nop             
  nop                           #  54    0x5d  1      OPC=nop             
  nop                           #  55    0x5e  1      OPC=nop             
  nop                           #  56    0x5f  1      OPC=nop             
.L_2d:                          #        0x60  0      OPC=<label>         
  nop                           #  57    0x60  1      OPC=nop             
  nop                           #  58    0x61  1      OPC=nop             
  nop                           #  59    0x62  1      OPC=nop             
  nop                           #  60    0x63  1      OPC=nop             
  nop                           #  61    0x64  1      OPC=nop             
  nop                           #  62    0x65  1      OPC=nop             
  xorl %eax, %eax               #  63    0x66  2      OPC=xorl_r32_r32    
  nop                           #  64    0x68  1      OPC=nop             
  nop                           #  65    0x69  1      OPC=nop             
  nop                           #  66    0x6a  1      OPC=nop             
  nop                           #  67    0x6b  1      OPC=nop             
  nop                           #  68    0x6c  1      OPC=nop             
  nop                           #  69    0x6d  1      OPC=nop             
  nop                           #  70    0x6e  1      OPC=nop             
  nop                           #  71    0x6f  1      OPC=nop             
  nop                           #  72    0x70  1      OPC=nop             
  nop                           #  73    0x71  1      OPC=nop             
  nop                           #  74    0x72  1      OPC=nop             
  nop                           #  75    0x73  1      OPC=nop             
  popq %r11                     #  76    0x74  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  77    0x76  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  78    0x7a  3      OPC=addq_r64_r64    
  jmpq %r11                     #  79    0x7d  3      OPC=jmpq_r64        
.L_30:                          #        0x80  0      OPC=<label>         
  xorq %rax, %rax               #  80    0x80  3      OPC=xorq_r64_r64    
  cmpl %ecx, %r8d               #  81    0x83  3      OPC=cmpl_r32_r32    
  setg %al                      #  82    0x86  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  83    0x89  4      OPC=leal_r32_m16    
  popq %r11                     #  84    0x8d  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  85    0x8f  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  86    0x93  3      OPC=addq_r64_r64    
  jmpq %r11                     #  87    0x96  3      OPC=jmpq_r64        
                                                                          
.size wmemcmp, .-wmemcmp
