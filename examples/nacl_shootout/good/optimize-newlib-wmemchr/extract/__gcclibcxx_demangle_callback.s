  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x1465e0
#! rip-offset  0x1065e0
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode                
.__gcclibcxx_demangle_callback:  #        0x1065e0  0      OPC=<label>           
  movl %esi, %esi                #  1     0x1065e0  2      OPC=movl_r32_r32      
  subl $0x8, %esp                #  2     0x1065e2  3      OPC=subl_r32_imm8     
  addq %r15, %rsp                #  3     0x1065e5  3      OPC=addq_r64_r64      
  movl %edi, %edi                #  4     0x1065e8  2      OPC=movl_r32_r32      
  testq %rsi, %rsi               #  5     0x1065ea  3      OPC=testq_r64_r64     
  movl %edx, %edx                #  6     0x1065ed  2      OPC=movl_r32_r32      
  je .L_106640                   #  7     0x1065ef  2      OPC=je_label          
  testq %rdi, %rdi               #  8     0x1065f1  3      OPC=testq_r64_r64     
  je .L_106640                   #  9     0x1065f4  2      OPC=je_label          
  movl %edx, %ecx                #  10    0x1065f6  2      OPC=movl_r32_r32      
  movl %esi, %edx                #  11    0x1065f8  2      OPC=movl_r32_r32      
  movl $0x11, %esi               #  12    0x1065fa  5      OPC=movl_r32_imm32    
  nop                            #  13    0x1065ff  1      OPC=nop               
  nop                            #  14    0x106600  1      OPC=nop               
  nop                            #  15    0x106601  1      OPC=nop               
  nop                            #  16    0x106602  1      OPC=nop               
  nop                            #  17    0x106603  1      OPC=nop               
  nop                            #  18    0x106604  1      OPC=nop               
  nop                            #  19    0x106605  1      OPC=nop               
  nop                            #  20    0x106606  1      OPC=nop               
  nop                            #  21    0x106607  1      OPC=nop               
  nop                            #  22    0x106608  1      OPC=nop               
  nop                            #  23    0x106609  1      OPC=nop               
  nop                            #  24    0x10660a  1      OPC=nop               
  nop                            #  25    0x10660b  1      OPC=nop               
  nop                            #  26    0x10660c  1      OPC=nop               
  nop                            #  27    0x10660d  1      OPC=nop               
  nop                            #  28    0x10660e  1      OPC=nop               
  nop                            #  29    0x10660f  1      OPC=nop               
  nop                            #  30    0x106610  1      OPC=nop               
  nop                            #  31    0x106611  1      OPC=nop               
  nop                            #  32    0x106612  1      OPC=nop               
  nop                            #  33    0x106613  1      OPC=nop               
  nop                            #  34    0x106614  1      OPC=nop               
  nop                            #  35    0x106615  1      OPC=nop               
  nop                            #  36    0x106616  1      OPC=nop               
  nop                            #  37    0x106617  1      OPC=nop               
  nop                            #  38    0x106618  1      OPC=nop               
  nop                            #  39    0x106619  1      OPC=nop               
  nop                            #  40    0x10661a  1      OPC=nop               
  callq .d_demangle_callback     #  41    0x10661b  5      OPC=callq_label       
  cmpl $0x1, %eax                #  42    0x106620  3      OPC=cmpl_r32_imm8     
  sbbl %eax, %eax                #  43    0x106623  2      OPC=sbbl_r32_r32      
  addl $0x8, %esp                #  44    0x106625  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  45    0x106628  3      OPC=addq_r64_r64      
  popq %r11                      #  46    0x10662b  2      OPC=popq_r64_1        
  andl $0xfffffffe, %eax         #  47    0x10662d  6      OPC=andl_r32_imm32    
  nop                            #  48    0x106633  1      OPC=nop               
  nop                            #  49    0x106634  1      OPC=nop               
  nop                            #  50    0x106635  1      OPC=nop               
  andl $0xffffffe0, %r11d        #  51    0x106636  7      OPC=andl_r32_imm32    
  nop                            #  52    0x10663d  1      OPC=nop               
  nop                            #  53    0x10663e  1      OPC=nop               
  nop                            #  54    0x10663f  1      OPC=nop               
  nop                            #  55    0x106640  1      OPC=nop               
  addq %r15, %r11                #  56    0x106641  3      OPC=addq_r64_r64      
  jmpq %r11                      #  57    0x106644  3      OPC=jmpq_r64          
  nop                            #  58    0x106647  1      OPC=nop               
  nop                            #  59    0x106648  1      OPC=nop               
  nop                            #  60    0x106649  1      OPC=nop               
  nop                            #  61    0x10664a  1      OPC=nop               
  nop                            #  62    0x10664b  1      OPC=nop               
  nop                            #  63    0x10664c  1      OPC=nop               
.L_106640:                       #        0x10664d  0      OPC=<label>           
  addl $0x8, %esp                #  64    0x10664d  3      OPC=addl_r32_imm8     
  addq %r15, %rsp                #  65    0x106650  3      OPC=addq_r64_r64      
  movl $0xfffffffd, %eax         #  66    0x106653  6      OPC=movl_r32_imm32_1  
  popq %r11                      #  67    0x106659  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d        #  68    0x10665b  7      OPC=andl_r32_imm32    
  nop                            #  69    0x106662  1      OPC=nop               
  nop                            #  70    0x106663  1      OPC=nop               
  nop                            #  71    0x106664  1      OPC=nop               
  nop                            #  72    0x106665  1      OPC=nop               
  addq %r15, %r11                #  73    0x106666  3      OPC=addq_r64_r64      
  jmpq %r11                      #  74    0x106669  3      OPC=jmpq_r64          
  nop                            #  75    0x10666c  1      OPC=nop               
  nop                            #  76    0x10666d  1      OPC=nop               
  nop                            #  77    0x10666e  1      OPC=nop               
  nop                            #  78    0x10666f  1      OPC=nop               
  nop                            #  79    0x106670  1      OPC=nop               
  nop                            #  80    0x106671  1      OPC=nop               
  nop                            #  81    0x106672  1      OPC=nop               
  nop                            #  82    0x106673  1      OPC=nop               
  nop                            #  83    0x106674  1      OPC=nop               
                                                                                 
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

