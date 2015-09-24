  .text
  .globl wcscmp
  .type wcscmp, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    33 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.wcscmp:                   #        0     0      OPC=<label>         
  jmpq .L_10               #  1     0     2      OPC=jmpq_label      
  nop                      #  2     0x2   1      OPC=nop             
  nop                      #  3     0x3   1      OPC=nop             
  nop                      #  4     0x4   1      OPC=nop             
  nop                      #  5     0x5   1      OPC=nop             
  nop                      #  6     0x6   1      OPC=nop             
  nop                      #  7     0x7   1      OPC=nop             
  nop                      #  8     0x8   1      OPC=nop             
  nop                      #  9     0x9   1      OPC=nop             
  nop                      #  10    0xa   1      OPC=nop             
  nop                      #  11    0xb   1      OPC=nop             
  nop                      #  12    0xc   1      OPC=nop             
  nop                      #  13    0xd   1      OPC=nop             
  nop                      #  14    0xe   1      OPC=nop             
  nop                      #  15    0xf   1      OPC=nop             
  nop                      #  16    0x10  1      OPC=nop             
  nop                      #  17    0x11  1      OPC=nop             
  nop                      #  18    0x12  1      OPC=nop             
  nop                      #  19    0x13  1      OPC=nop             
  nop                      #  20    0x14  1      OPC=nop             
  nop                      #  21    0x15  1      OPC=nop             
  nop                      #  22    0x16  1      OPC=nop             
  nop                      #  23    0x17  1      OPC=nop             
  nop                      #  24    0x18  1      OPC=nop             
  nop                      #  25    0x19  1      OPC=nop             
  nop                      #  26    0x1a  1      OPC=nop             
  nop                      #  27    0x1b  1      OPC=nop             
  nop                      #  28    0x1c  1      OPC=nop             
  nop                      #  29    0x1d  1      OPC=nop             
  nop                      #  30    0x1e  1      OPC=nop             
  nop                      #  31    0x1f  1      OPC=nop             
.L_8:                      #        0x20  0      OPC=<label>         
  addq $0x4, %rdi          #  32    0x20  4      OPC=addq_r64_imm8   
  nop                      #  33    0x24  1      OPC=nop             
  nop                      #  34    0x25  1      OPC=nop             
  nop                      #  35    0x26  1      OPC=nop             
  nop                      #  36    0x27  1      OPC=nop             
  nop                      #  37    0x28  1      OPC=nop             
  nop                      #  38    0x29  1      OPC=nop             
  andq $0xffffffff, %rdx   #  39    0x2a  7      OPC=andq_r64_imm32  
  je .L_1f                 #  40    0x31  2      OPC=je_label        
  nop                      #  41    0x33  1      OPC=nop             
  nop                      #  42    0x34  1      OPC=nop             
  nop                      #  43    0x35  1      OPC=nop             
  nop                      #  44    0x36  1      OPC=nop             
  nop                      #  45    0x37  1      OPC=nop             
  nop                      #  46    0x38  1      OPC=nop             
  nop                      #  47    0x39  1      OPC=nop             
  nop                      #  48    0x3a  1      OPC=nop             
  nop                      #  49    0x3b  1      OPC=nop             
  nop                      #  50    0x3c  1      OPC=nop             
  nop                      #  51    0x3d  1      OPC=nop             
  nop                      #  52    0x3e  1      OPC=nop             
  nop                      #  53    0x3f  1      OPC=nop             
.L_10:                     #        0x40  0      OPC=<label>         
  leal (%rdi), %r8d        #  54    0x40  3      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %eax  #  55    0x43  4      OPC=movl_r32_m32    
  addq $0x4, %rsi          #  56    0x47  4      OPC=addq_r64_imm8   
  leal -0x4(%rsi), %r8d    #  57    0x4b  4      OPC=leal_r32_m32    
  movl (%r15,%r8,1), %edx  #  58    0x4f  4      OPC=movl_r32_m32    
  cmpl %edx, %eax          #  59    0x53  2      OPC=cmpl_r32_r32    
  je .L_8                  #  60    0x55  2      OPC=je_label        
  nop                      #  61    0x57  1      OPC=nop             
  nop                      #  62    0x58  1      OPC=nop             
  nop                      #  63    0x59  1      OPC=nop             
  nop                      #  64    0x5a  1      OPC=nop             
  nop                      #  65    0x5b  1      OPC=nop             
  nop                      #  66    0x5c  1      OPC=nop             
  nop                      #  67    0x5d  1      OPC=nop             
  subl %edx, %eax          #  68    0x5e  2      OPC=subl_r32_r32    
.L_1f:                     #        0x60  0      OPC=<label>         
  popq %r11                #  69    0x60  2      OPC=popq_r64_1      
  andl $0xe0, %r11d        #  70    0x62  4      OPC=andl_r32_imm8   
  addq %r15, %r11          #  71    0x66  3      OPC=addq_r64_r64    
  jmpq %r11                #  72    0x69  3      OPC=jmpq_r64        
                                                                     
.size wcscmp, .-wcscmp
