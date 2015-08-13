  .text
  .globl __gmp_tmp_reentrant_free
  .type __gmp_tmp_reentrant_free, @function

#! file-offset 0x77d00
#! rip-offset  0x37d00
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_free:     #        0x37d00  0      OPC=<label>         
  movl %edi, %edi              #  1     0x37d00  2      OPC=movl_r32_r32    
  pushq %rbx                   #  2     0x37d02  1      OPC=pushq_r64_1     
  testq %rdi, %rdi             #  3     0x37d03  3      OPC=testq_r64_r64   
  je .L_37d60                  #  4     0x37d06  2      OPC=je_label        
  nop                          #  5     0x37d08  1      OPC=nop             
  nop                          #  6     0x37d09  1      OPC=nop             
  nop                          #  7     0x37d0a  1      OPC=nop             
  nop                          #  8     0x37d0b  1      OPC=nop             
  nop                          #  9     0x37d0c  1      OPC=nop             
  nop                          #  10    0x37d0d  1      OPC=nop             
  nop                          #  11    0x37d0e  1      OPC=nop             
  nop                          #  12    0x37d0f  1      OPC=nop             
  nop                          #  13    0x37d10  1      OPC=nop             
  nop                          #  14    0x37d11  1      OPC=nop             
  nop                          #  15    0x37d12  1      OPC=nop             
  nop                          #  16    0x37d13  1      OPC=nop             
  nop                          #  17    0x37d14  1      OPC=nop             
  nop                          #  18    0x37d15  1      OPC=nop             
  nop                          #  19    0x37d16  1      OPC=nop             
  nop                          #  20    0x37d17  1      OPC=nop             
  nop                          #  21    0x37d18  1      OPC=nop             
  nop                          #  22    0x37d19  1      OPC=nop             
  nop                          #  23    0x37d1a  1      OPC=nop             
  nop                          #  24    0x37d1b  1      OPC=nop             
  nop                          #  25    0x37d1c  1      OPC=nop             
  nop                          #  26    0x37d1d  1      OPC=nop             
  nop                          #  27    0x37d1e  1      OPC=nop             
  nop                          #  28    0x37d1f  1      OPC=nop             
.L_37d20:                      #        0x37d20  0      OPC=<label>         
  movl %edi, %edi              #  29    0x37d20  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ebx     #  30    0x37d22  4      OPC=movl_r32_m32    
  movl 0x10038b28(%rip), %eax  #  31    0x37d26  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  32    0x37d2c  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %esi  #  33    0x37d2e  5      OPC=movl_r32_m32    
  nop                          #  34    0x37d33  1      OPC=nop             
  nop                          #  35    0x37d34  1      OPC=nop             
  nop                          #  36    0x37d35  1      OPC=nop             
  nop                          #  37    0x37d36  1      OPC=nop             
  nop                          #  38    0x37d37  1      OPC=nop             
  andl $0xffffffe0, %eax       #  39    0x37d38  6      OPC=andl_r32_imm32  
  nop                          #  40    0x37d3e  1      OPC=nop             
  nop                          #  41    0x37d3f  1      OPC=nop             
  nop                          #  42    0x37d40  1      OPC=nop             
  addq %r15, %rax              #  43    0x37d41  3      OPC=addq_r64_r64    
  callq %rax                   #  44    0x37d44  2      OPC=callq_r64       
  testq %rbx, %rbx             #  45    0x37d46  3      OPC=testq_r64_r64   
  movq %rbx, %rdi              #  46    0x37d49  3      OPC=movq_r64_r64    
  jne .L_37d20                 #  47    0x37d4c  2      OPC=jne_label       
  nop                          #  48    0x37d4e  1      OPC=nop             
  nop                          #  49    0x37d4f  1      OPC=nop             
  nop                          #  50    0x37d50  1      OPC=nop             
  nop                          #  51    0x37d51  1      OPC=nop             
  nop                          #  52    0x37d52  1      OPC=nop             
  nop                          #  53    0x37d53  1      OPC=nop             
  nop                          #  54    0x37d54  1      OPC=nop             
  nop                          #  55    0x37d55  1      OPC=nop             
  nop                          #  56    0x37d56  1      OPC=nop             
  nop                          #  57    0x37d57  1      OPC=nop             
  nop                          #  58    0x37d58  1      OPC=nop             
  nop                          #  59    0x37d59  1      OPC=nop             
  nop                          #  60    0x37d5a  1      OPC=nop             
  nop                          #  61    0x37d5b  1      OPC=nop             
  nop                          #  62    0x37d5c  1      OPC=nop             
  nop                          #  63    0x37d5d  1      OPC=nop             
  nop                          #  64    0x37d5e  1      OPC=nop             
  nop                          #  65    0x37d5f  1      OPC=nop             
  nop                          #  66    0x37d60  1      OPC=nop             
  nop                          #  67    0x37d61  1      OPC=nop             
  nop                          #  68    0x37d62  1      OPC=nop             
  nop                          #  69    0x37d63  1      OPC=nop             
  nop                          #  70    0x37d64  1      OPC=nop             
  nop                          #  71    0x37d65  1      OPC=nop             
.L_37d60:                      #        0x37d66  0      OPC=<label>         
  popq %rbx                    #  72    0x37d66  1      OPC=popq_r64_1      
  popq %r11                    #  73    0x37d67  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  74    0x37d69  7      OPC=andl_r32_imm32  
  nop                          #  75    0x37d70  1      OPC=nop             
  nop                          #  76    0x37d71  1      OPC=nop             
  nop                          #  77    0x37d72  1      OPC=nop             
  nop                          #  78    0x37d73  1      OPC=nop             
  addq %r15, %r11              #  79    0x37d74  3      OPC=addq_r64_r64    
  jmpq %r11                    #  80    0x37d77  3      OPC=jmpq_r64        
  nop                          #  81    0x37d7a  1      OPC=nop             
  nop                          #  82    0x37d7b  1      OPC=nop             
  nop                          #  83    0x37d7c  1      OPC=nop             
  nop                          #  84    0x37d7d  1      OPC=nop             
  nop                          #  85    0x37d7e  1      OPC=nop             
  nop                          #  86    0x37d7f  1      OPC=nop             
  nop                          #  87    0x37d80  1      OPC=nop             
  nop                          #  88    0x37d81  1      OPC=nop             
  nop                          #  89    0x37d82  1      OPC=nop             
  nop                          #  90    0x37d83  1      OPC=nop             
  nop                          #  91    0x37d84  1      OPC=nop             
  nop                          #  92    0x37d85  1      OPC=nop             
  nop                          #  93    0x37d86  1      OPC=nop             
  nop                          #  94    0x37d87  1      OPC=nop             
  nop                          #  95    0x37d88  1      OPC=nop             
  nop                          #  96    0x37d89  1      OPC=nop             
  nop                          #  97    0x37d8a  1      OPC=nop             
  nop                          #  98    0x37d8b  1      OPC=nop             
  nop                          #  99    0x37d8c  1      OPC=nop             
                                                                            
.size __gmp_tmp_reentrant_free, .-__gmp_tmp_reentrant_free

