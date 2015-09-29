  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x146d00
#! rip-offset  0x106d00
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode                
.__gcclibcxx_demangle_callback:  #        0x106d00  0      OPC=<label>           
  movl %esi, %esi                #  1     0x106d00  2      OPC=movl_r32_r32      
  subl $0x8, %esp                #  2     0x106d02  3      OPC=subl_r32_imm8     
  addq %r15, %rsp                #  3     0x106d05  3      OPC=addq_r64_r64      
  movl %edi, %edi                #  4     0x106d08  2      OPC=movl_r32_r32      
  testq %rsi, %rsi               #  5     0x106d0a  3      OPC=testq_r64_r64     
  movl %edx, %edx                #  6     0x106d0d  2      OPC=movl_r32_r32      
  je .L_106d60                   #  7     0x106d0f  2      OPC=je_label          
  testq %rdi, %rdi               #  8     0x106d11  3      OPC=testq_r64_r64     
  je .L_106d60                   #  9     0x106d14  2      OPC=je_label          
  movl %edx, %ecx                #  10    0x106d16  2      OPC=movl_r32_r32      
  movl %esi, %edx                #  11    0x106d18  2      OPC=movl_r32_r32      
  movl $0x11, %esi               #  12    0x106d1a  5      OPC=movl_r32_imm32    
  nop                            #  13    0x106d1f  1      OPC=nop               
  nop                            #  14    0x106d20  1      OPC=nop               
  nop                            #  15    0x106d21  1      OPC=nop               
  nop                            #  16    0x106d22  1      OPC=nop               
  nop                            #  17    0x106d23  1      OPC=nop               
  nop                            #  18    0x106d24  1      OPC=nop               
  nop                            #  19    0x106d25  1      OPC=nop               
  nop                            #  20    0x106d26  1      OPC=nop               
  nop                            #  21    0x106d27  1      OPC=nop               
  nop                            #  22    0x106d28  1      OPC=nop               
  nop                            #  23    0x106d29  1      OPC=nop               
  nop                            #  24    0x106d2a  1      OPC=nop               
  nop                            #  25    0x106d2b  1      OPC=nop               
  nop                            #  26    0x106d2c  1      OPC=nop               
  nop                            #  27    0x106d2d  1      OPC=nop               
  nop                            #  28    0x106d2e  1      OPC=nop               
  nop                            #  29    0x106d2f  1      OPC=nop               
  nop                            #  30    0x106d30  1      OPC=nop               
  nop                            #  31    0x106d31  1      OPC=nop               
  nop                            #  32    0x106d32  1      OPC=nop               
  nop                            #  33    0x106d33  1      OPC=nop               
  nop                            #  34    0x106d34  1      OPC=nop               
  nop                            #  35    0x106d35  1      OPC=nop               
  nop                            #  36    0x106d36  1      OPC=nop               
  nop                            #  37    0x106d37  1      OPC=nop               
  nop                            #  38    0x106d38  1      OPC=nop               
  nop                            #  39    0x106d39  1      OPC=nop               
  nop                            #  40    0x106d3a  1      OPC=nop               
  callq .d_demangle_callback     #  41    0x106d3b  5      OPC=callq_label       
  cmpl $0x1, %eax                #  42    0x106d40  3      OPC=cmpl_r32_imm8     
  sbbl %eax, %eax                #  43    0x106d43  2      OPC=sbbl_r32_r32      
  addl $0x8, %esp                #  44    0x106d45  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  45    0x106d48  3      OPC=addq_r64_r64      
  popq %r11                      #  46    0x106d4b  2      OPC=popq_r64_1        
  andl $0xfffffffe, %eax         #  47    0x106d4d  6      OPC=andl_r32_imm32    
  nop                            #  48    0x106d53  1      OPC=nop               
  nop                            #  49    0x106d54  1      OPC=nop               
  nop                            #  50    0x106d55  1      OPC=nop               
  andl $0xffffffe0, %r11d        #  51    0x106d56  7      OPC=andl_r32_imm32    
  nop                            #  52    0x106d5d  1      OPC=nop               
  nop                            #  53    0x106d5e  1      OPC=nop               
  nop                            #  54    0x106d5f  1      OPC=nop               
  nop                            #  55    0x106d60  1      OPC=nop               
  addq %r15, %r11                #  56    0x106d61  3      OPC=addq_r64_r64      
  jmpq %r11                      #  57    0x106d64  3      OPC=jmpq_r64          
  nop                            #  58    0x106d67  1      OPC=nop               
  nop                            #  59    0x106d68  1      OPC=nop               
  nop                            #  60    0x106d69  1      OPC=nop               
  nop                            #  61    0x106d6a  1      OPC=nop               
  nop                            #  62    0x106d6b  1      OPC=nop               
  nop                            #  63    0x106d6c  1      OPC=nop               
.L_106d60:                       #        0x106d6d  0      OPC=<label>           
  addl $0x8, %esp                #  64    0x106d6d  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  65    0x106d70  3      OPC=addq_r64_r64      
  movl $0xfffffffd, %eax         #  66    0x106d73  6      OPC=movl_r32_imm32_1  
  popq %r11                      #  67    0x106d79  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d        #  68    0x106d7b  7      OPC=andl_r32_imm32    
  nop                            #  69    0x106d82  1      OPC=nop               
  nop                            #  70    0x106d83  1      OPC=nop               
  nop                            #  71    0x106d84  1      OPC=nop               
  nop                            #  72    0x106d85  1      OPC=nop               
  addq %r15, %r11                #  73    0x106d86  3      OPC=addq_r64_r64      
  jmpq %r11                      #  74    0x106d89  3      OPC=jmpq_r64          
  nop                            #  75    0x106d8c  1      OPC=nop               
  nop                            #  76    0x106d8d  1      OPC=nop               
  nop                            #  77    0x106d8e  1      OPC=nop               
  nop                            #  78    0x106d8f  1      OPC=nop               
  nop                            #  79    0x106d90  1      OPC=nop               
  nop                            #  80    0x106d91  1      OPC=nop               
  nop                            #  81    0x106d92  1      OPC=nop               
  nop                            #  82    0x106d93  1      OPC=nop               
  nop                            #  83    0x106d94  1      OPC=nop               
                                                                                 
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

