  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x158720
#! rip-offset  0x118720
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.mmap:                        #        0x118720  0      OPC=<label>           
  pushq %rbx                  #  1     0x118720  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x118721  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x118724  3      OPC=addq_r64_r64      
  movl 0xff60b13(%rip), %eax  #  4     0x118727  6      OPC=movl_r32_m32      
  movl %edi, 0xc(%rsp)        #  5     0x11872d  4      OPC=movl_m32_r32      
  leal 0xc(%rsp), %edi        #  6     0x118731  4      OPC=leal_r32_m16      
  nop                         #  7     0x118735  1      OPC=nop               
  nop                         #  8     0x118736  1      OPC=nop               
  nop                         #  9     0x118737  1      OPC=nop               
  andl $0xffffffe0, %eax      #  10    0x118738  6      OPC=andl_r32_imm32    
  nop                         #  11    0x11873e  1      OPC=nop               
  nop                         #  12    0x11873f  1      OPC=nop               
  nop                         #  13    0x118740  1      OPC=nop               
  addq %r15, %rax             #  14    0x118741  3      OPC=addq_r64_r64      
  callq %rax                  #  15    0x118744  2      OPC=callq_r64         
  testl %eax, %eax            #  16    0x118746  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  17    0x118748  2      OPC=movl_r32_r32      
  jne .L_118760               #  18    0x11874a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  19    0x11874c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  20    0x118750  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  21    0x118753  3      OPC=addq_r64_r64      
  popq %rbx                   #  22    0x118756  1      OPC=popq_r64_1        
  popq %r11                   #  23    0x118757  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  24    0x118759  7      OPC=andl_r32_imm32    
  nop                         #  25    0x118760  1      OPC=nop               
  nop                         #  26    0x118761  1      OPC=nop               
  nop                         #  27    0x118762  1      OPC=nop               
  nop                         #  28    0x118763  1      OPC=nop               
  addq %r15, %r11             #  29    0x118764  3      OPC=addq_r64_r64      
  jmpq %r11                   #  30    0x118767  3      OPC=jmpq_r64          
  nop                         #  31    0x11876a  1      OPC=nop               
  nop                         #  32    0x11876b  1      OPC=nop               
  nop                         #  33    0x11876c  1      OPC=nop               
.L_118760:                    #        0x11876d  0      OPC=<label>           
  nop                         #  34    0x11876d  1      OPC=nop               
  nop                         #  35    0x11876e  1      OPC=nop               
  nop                         #  36    0x11876f  1      OPC=nop               
  nop                         #  37    0x118770  1      OPC=nop               
  nop                         #  38    0x118771  1      OPC=nop               
  nop                         #  39    0x118772  1      OPC=nop               
  nop                         #  40    0x118773  1      OPC=nop               
  nop                         #  41    0x118774  1      OPC=nop               
  nop                         #  42    0x118775  1      OPC=nop               
  nop                         #  43    0x118776  1      OPC=nop               
  nop                         #  44    0x118777  1      OPC=nop               
  nop                         #  45    0x118778  1      OPC=nop               
  nop                         #  46    0x118779  1      OPC=nop               
  nop                         #  47    0x11877a  1      OPC=nop               
  nop                         #  48    0x11877b  1      OPC=nop               
  nop                         #  49    0x11877c  1      OPC=nop               
  nop                         #  50    0x11877d  1      OPC=nop               
  nop                         #  51    0x11877e  1      OPC=nop               
  nop                         #  52    0x11877f  1      OPC=nop               
  nop                         #  53    0x118780  1      OPC=nop               
  nop                         #  54    0x118781  1      OPC=nop               
  nop                         #  55    0x118782  1      OPC=nop               
  nop                         #  56    0x118783  1      OPC=nop               
  nop                         #  57    0x118784  1      OPC=nop               
  nop                         #  58    0x118785  1      OPC=nop               
  nop                         #  59    0x118786  1      OPC=nop               
  nop                         #  60    0x118787  1      OPC=nop               
  callq .__errno              #  61    0x118788  5      OPC=callq_label       
  movl %eax, %eax             #  62    0x11878d  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  63    0x11878f  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  64    0x118791  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  65    0x118795  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  66    0x118798  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  67    0x11879b  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  68    0x1187a1  1      OPC=popq_r64_1        
  popq %r11                   #  69    0x1187a2  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  70    0x1187a4  7      OPC=andl_r32_imm32    
  nop                         #  71    0x1187ab  1      OPC=nop               
  nop                         #  72    0x1187ac  1      OPC=nop               
  nop                         #  73    0x1187ad  1      OPC=nop               
  nop                         #  74    0x1187ae  1      OPC=nop               
  addq %r15, %r11             #  75    0x1187af  3      OPC=addq_r64_r64      
  jmpq %r11                   #  76    0x1187b2  3      OPC=jmpq_r64          
                                                                              
.size mmap, .-mmap

