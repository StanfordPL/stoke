  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    37 bytes

# Text                      #  Line  RIP   Bytes  Opcode              
.wcslen:                    #        0     0      OPC=<label>         
  nop                       #  1     0     1      OPC=nop             
  leal (%rdi), %ecx         #  2     0x1   2      OPC=leal_r32_m32    
  andl (%r15,%rcx,1), %ecx  #  3     0x3   4      OPC=andl_r32_m32    
  nop                       #  4     0x7   1      OPC=nop             
  nop                       #  5     0x8   1      OPC=nop             
  nop                       #  6     0x9   1      OPC=nop             
  nop                       #  7     0xa   1      OPC=nop             
  nop                       #  8     0xb   1      OPC=nop             
  movq %rdi, %rax           #  9     0xc   3      OPC=movq_r64_r64_1  
  nop                       #  10    0xf   1      OPC=nop             
  je .L_22                  #  11    0x10  2      OPC=je_label        
  nop                       #  12    0x12  1      OPC=nop             
  nop                       #  13    0x13  1      OPC=nop             
  nop                       #  14    0x14  1      OPC=nop             
  nop                       #  15    0x15  1      OPC=nop             
  nopl %eax                 #  16    0x16  3      OPC=nopl_r32        
  nop                       #  17    0x19  1      OPC=nop             
  nop                       #  18    0x1a  1      OPC=nop             
  nop                       #  19    0x1b  1      OPC=nop             
  nop                       #  20    0x1c  1      OPC=nop             
  nop                       #  21    0x1d  1      OPC=nop             
  nop                       #  22    0x1e  1      OPC=nop             
  nop                       #  23    0x1f  1      OPC=nop             
.L_10:                      #        0x20  0      OPC=<label>         
  addl $0x4, %eax           #  24    0x20  5      OPC=addl_eax_imm32  
  leal (%rax), %edx         #  25    0x25  2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx  #  26    0x27  4      OPC=movl_r32_m32    
  testl %edx, %edx          #  27    0x2b  2      OPC=testl_r32_r32   
  jne .L_10                 #  28    0x2d  2      OPC=jne_label       
  nop                       #  29    0x2f  1      OPC=nop             
  nop                       #  30    0x30  1      OPC=nop             
  nop                       #  31    0x31  1      OPC=nop             
  nop                       #  32    0x32  1      OPC=nop             
  nop                       #  33    0x33  1      OPC=nop             
  subq %rdi, %rax           #  34    0x34  3      OPC=subq_r64_r64    
  nop                       #  35    0x37  1      OPC=nop             
  nop                       #  36    0x38  1      OPC=nop             
  nop                       #  37    0x39  1      OPC=nop             
  nop                       #  38    0x3a  1      OPC=nop             
  sarq $0x2, %rax           #  39    0x3b  4      OPC=sarq_r64_imm8   
  nop                       #  40    0x3f  1      OPC=nop             
  popq %r11                 #  41    0x40  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  42    0x42  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  43    0x46  3      OPC=addq_r64_r64    
  jmpq %r11                 #  44    0x49  3      OPC=jmpq_r64        
  nop                       #  45    0x4c  1      OPC=nop             
  nop                       #  46    0x4d  1      OPC=nop             
  nop                       #  47    0x4e  1      OPC=nop             
  nop                       #  48    0x4f  1      OPC=nop             
  nopl %eax                 #  49    0x50  3      OPC=nopl_r32        
  nop                       #  50    0x53  1      OPC=nop             
  nop                       #  51    0x54  1      OPC=nop             
  nop                       #  52    0x55  1      OPC=nop             
  nop                       #  53    0x56  1      OPC=nop             
  nop                       #  54    0x57  1      OPC=nop             
  nop                       #  55    0x58  1      OPC=nop             
  nop                       #  56    0x59  1      OPC=nop             
  nop                       #  57    0x5a  1      OPC=nop             
  nop                       #  58    0x5b  1      OPC=nop             
  nop                       #  59    0x5c  1      OPC=nop             
  nop                       #  60    0x5d  1      OPC=nop             
  nop                       #  61    0x5e  1      OPC=nop             
  nop                       #  62    0x5f  1      OPC=nop             
.L_22:                      #        0x60  0      OPC=<label>         
  xorq %rdi, %rax           #  63    0x60  3      OPC=xorq_r64_r64    
  nop                       #  64    0x63  1      OPC=nop             
  nop                       #  65    0x64  1      OPC=nop             
  popq %r11                 #  66    0x65  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  67    0x67  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  68    0x6b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  69    0x6e  3      OPC=jmpq_r64        
                                                                      
.size wcslen, .-wcslen
