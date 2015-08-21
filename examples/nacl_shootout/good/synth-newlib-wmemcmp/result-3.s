  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    61 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wmemcmp:                       #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  movl %esp, %eax               #  2     0x1   2      OPC=movl_r32_r32_1  
  nop                           #  3     0x3   1      OPC=nop             
  xorb %spl, %dl                #  4     0x4   3      OPC=xorb_r8_r8_1    
  nop                           #  5     0x7   1      OPC=nop             
  nop                           #  6     0x8   1      OPC=nop             
  je .L_2d                      #  7     0x9   2      OPC=je_label        
  leal (%rdi), %r8d             #  8     0xb   3      OPC=leal_r32_m16    
  movl (%r15,%r8,1), %r8d       #  9     0xe   4      OPC=movl_r32_m32    
  leal (%rsi), %ecx             #  10    0x12  2      OPC=leal_r32_m32    
  movl (%r15,%rcx,1), %ecx      #  11    0x14  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  12    0x18  3      OPC=cmpl_r32_r32    
  nop                           #  13    0x1b  1      OPC=nop             
  jne .L_30                     #  14    0x1c  2      OPC=jne_label       
  jmpq .L_24                    #  15    0x1e  2      OPC=jmpq_label      
.L_18:                          #        0x20  0      OPC=<label>         
  leal (%rsi,%rax,4), %ecx      #  16    0x20  3      OPC=leal_r32_m16    
  movl (%r15,%rcx,1), %ecx      #  17    0x23  4      OPC=movl_r32_m32    
  nopl %eax                     #  18    0x27  3      OPC=nopl_r32        
  nopl %eax                     #  19    0x2a  3      OPC=nopl_r32        
  nop                           #  20    0x2d  1      OPC=nop             
  leal (%rdi,%rax,4), %r8d      #  21    0x2e  4      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %r8d       #  22    0x32  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  23    0x36  3      OPC=cmpl_r32_r32    
  nopl %eax                     #  24    0x39  3      OPC=nopl_r32        
  nop                           #  25    0x3c  1      OPC=nop             
  nop                           #  26    0x3d  1      OPC=nop             
  jne .L_30                     #  27    0x3e  2      OPC=jne_label       
.L_24:                          #        0x40  0      OPC=<label>         
  addq $0x1, %rax               #  28    0x40  4      OPC=addq_r64_imm8   
  decw %dx                      #  29    0x44  3      OPC=decw_r16        
  jne .L_18                     #  30    0x47  2      OPC=jne_label       
  nop                           #  31    0x49  1      OPC=nop             
  nop                           #  32    0x4a  1      OPC=nop             
  nop                           #  33    0x4b  1      OPC=nop             
  nopl %eax                     #  34    0x4c  3      OPC=nopl_r32        
  nop                           #  35    0x4f  1      OPC=nop             
  nopl %eax                     #  36    0x50  3      OPC=nopl_r32        
  nop                           #  37    0x53  1      OPC=nop             
  nopl %eax                     #  38    0x54  3      OPC=nopl_r32        
  nop                           #  39    0x57  1      OPC=nop             
  nop                           #  40    0x58  1      OPC=nop             
  nop                           #  41    0x59  1      OPC=nop             
  nop                           #  42    0x5a  1      OPC=nop             
  nop                           #  43    0x5b  1      OPC=nop             
  nop                           #  44    0x5c  1      OPC=nop             
  nop                           #  45    0x5d  1      OPC=nop             
  nop                           #  46    0x5e  1      OPC=nop             
  nop                           #  47    0x5f  1      OPC=nop             
.L_2d:                          #        0x60  0      OPC=<label>         
  nop                           #  48    0x60  1      OPC=nop             
  nop                           #  49    0x61  1      OPC=nop             
  nop                           #  50    0x62  1      OPC=nop             
  nop                           #  51    0x63  1      OPC=nop             
  subl %eax, %eax               #  52    0x64  2      OPC=subl_r32_r32    
  nop                           #  53    0x66  1      OPC=nop             
  nop                           #  54    0x67  1      OPC=nop             
  nop                           #  55    0x68  1      OPC=nop             
  nop                           #  56    0x69  1      OPC=nop             
  nop                           #  57    0x6a  1      OPC=nop             
  nop                           #  58    0x6b  1      OPC=nop             
  nop                           #  59    0x6c  1      OPC=nop             
  nop                           #  60    0x6d  1      OPC=nop             
  nop                           #  61    0x6e  1      OPC=nop             
  nop                           #  62    0x6f  1      OPC=nop             
  nop                           #  63    0x70  1      OPC=nop             
  nop                           #  64    0x71  1      OPC=nop             
  nop                           #  65    0x72  1      OPC=nop             
  nop                           #  66    0x73  1      OPC=nop             
  popq %r11                     #  67    0x74  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  68    0x76  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  69    0x7a  3      OPC=addq_r64_r64    
  jmpq %r11                     #  70    0x7d  3      OPC=jmpq_r64        
.L_30:                          #        0x80  0      OPC=<label>         
  movsbl %dh, %eax              #  71    0x80  3      OPC=movsbl_r32_rh   
  setg %al                      #  72    0x83  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  73    0x86  4      OPC=leal_r32_m16    
  nop                           #  74    0x8a  1      OPC=nop             
  popq %r11                     #  75    0x8b  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  76    0x8d  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  77    0x91  3      OPC=addq_r64_r64    
  jmpq %r11                     #  78    0x94  3      OPC=jmpq_r64        
                                                                          
.size wmemcmp, .-wmemcmp
