  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x149c00
#! rip-offset  0x109c00
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.read_sleb128:                #        0x109c00  0      OPC=<label>           
  movl %edi, %eax             #  1     0x109c00  2      OPC=movl_r32_r32      
  movl %esi, %esi             #  2     0x109c02  2      OPC=movl_r32_r32      
  xorl %r8d, %r8d             #  3     0x109c04  3      OPC=xorl_r32_r32      
  xorl %ecx, %ecx             #  4     0x109c07  2      OPC=xorl_r32_r32      
  nop                         #  5     0x109c09  1      OPC=nop               
  nop                         #  6     0x109c0a  1      OPC=nop               
  nop                         #  7     0x109c0b  1      OPC=nop               
  nop                         #  8     0x109c0c  1      OPC=nop               
  nop                         #  9     0x109c0d  1      OPC=nop               
  nop                         #  10    0x109c0e  1      OPC=nop               
  nop                         #  11    0x109c0f  1      OPC=nop               
  nop                         #  12    0x109c10  1      OPC=nop               
  nop                         #  13    0x109c11  1      OPC=nop               
  nop                         #  14    0x109c12  1      OPC=nop               
  nop                         #  15    0x109c13  1      OPC=nop               
  nop                         #  16    0x109c14  1      OPC=nop               
  nop                         #  17    0x109c15  1      OPC=nop               
  nop                         #  18    0x109c16  1      OPC=nop               
  nop                         #  19    0x109c17  1      OPC=nop               
  nop                         #  20    0x109c18  1      OPC=nop               
  nop                         #  21    0x109c19  1      OPC=nop               
  nop                         #  22    0x109c1a  1      OPC=nop               
  nop                         #  23    0x109c1b  1      OPC=nop               
  nop                         #  24    0x109c1c  1      OPC=nop               
  nop                         #  25    0x109c1d  1      OPC=nop               
  nop                         #  26    0x109c1e  1      OPC=nop               
  nop                         #  27    0x109c1f  1      OPC=nop               
.L_109c20:                    #        0x109c20  0      OPC=<label>           
  movl %eax, %eax             #  28    0x109c20  2      OPC=movl_r32_r32      
  movzbl (%r15,%rax,1), %edi  #  29    0x109c22  5      OPC=movzbl_r32_m8     
  addl $0x1, %eax             #  30    0x109c27  3      OPC=addl_r32_imm8     
  movzbl %dil, %r9d           #  31    0x109c2a  4      OPC=movzbl_r32_r8     
  movl %r9d, %edx             #  32    0x109c2e  3      OPC=movl_r32_r32      
  andl $0x7f, %edx            #  33    0x109c31  3      OPC=andl_r32_imm8     
  shll %cl, %edx              #  34    0x109c34  2      OPC=shll_r32_cl       
  addl $0x7, %ecx             #  35    0x109c36  3      OPC=addl_r32_imm8     
  orl %edx, %r8d              #  36    0x109c39  3      OPC=orl_r32_r32       
  testb %dil, %dil            #  37    0x109c3c  3      OPC=testb_r8_r8       
  nop                         #  38    0x109c3f  1      OPC=nop               
  js .L_109c20                #  39    0x109c40  2      OPC=js_label          
  cmpl $0x1f, %ecx            #  40    0x109c42  3      OPC=cmpl_r32_imm8     
  ja .L_109c60                #  41    0x109c45  2      OPC=ja_label          
  andl $0x40, %r9d            #  42    0x109c47  4      OPC=andl_r32_imm8     
  je .L_109c60                #  43    0x109c4b  2      OPC=je_label          
  movl $0xffffffff, %edx      #  44    0x109c4d  6      OPC=movl_r32_imm32_1  
  shll %cl, %edx              #  45    0x109c53  2      OPC=shll_r32_cl       
  orl %edx, %r8d              #  46    0x109c55  3      OPC=orl_r32_r32       
  nop                         #  47    0x109c58  1      OPC=nop               
  nop                         #  48    0x109c59  1      OPC=nop               
  nop                         #  49    0x109c5a  1      OPC=nop               
  nop                         #  50    0x109c5b  1      OPC=nop               
  nop                         #  51    0x109c5c  1      OPC=nop               
  nop                         #  52    0x109c5d  1      OPC=nop               
  nop                         #  53    0x109c5e  1      OPC=nop               
  nop                         #  54    0x109c5f  1      OPC=nop               
  nop                         #  55    0x109c60  1      OPC=nop               
.L_109c60:                    #        0x109c61  0      OPC=<label>           
  popq %r11                   #  56    0x109c61  2      OPC=popq_r64_1        
  movl %esi, %esi             #  57    0x109c63  2      OPC=movl_r32_r32      
  movl %r8d, (%r15,%rsi,1)    #  58    0x109c65  4      OPC=movl_m32_r32      
  andl $0xffffffe0, %r11d     #  59    0x109c69  7      OPC=andl_r32_imm32    
  nop                         #  60    0x109c70  1      OPC=nop               
  nop                         #  61    0x109c71  1      OPC=nop               
  nop                         #  62    0x109c72  1      OPC=nop               
  nop                         #  63    0x109c73  1      OPC=nop               
  addq %r15, %r11             #  64    0x109c74  3      OPC=addq_r64_r64      
  jmpq %r11                   #  65    0x109c77  3      OPC=jmpq_r64          
  nop                         #  66    0x109c7a  1      OPC=nop               
  nop                         #  67    0x109c7b  1      OPC=nop               
  nop                         #  68    0x109c7c  1      OPC=nop               
  nop                         #  69    0x109c7d  1      OPC=nop               
  nop                         #  70    0x109c7e  1      OPC=nop               
  nop                         #  71    0x109c7f  1      OPC=nop               
  nop                         #  72    0x109c80  1      OPC=nop               
  nop                         #  73    0x109c81  1      OPC=nop               
  nop                         #  74    0x109c82  1      OPC=nop               
  nop                         #  75    0x109c83  1      OPC=nop               
  nop                         #  76    0x109c84  1      OPC=nop               
  nop                         #  77    0x109c85  1      OPC=nop               
  nop                         #  78    0x109c86  1      OPC=nop               
  nop                         #  79    0x109c87  1      OPC=nop               
                                                                              
.size read_sleb128, .-read_sleb128

