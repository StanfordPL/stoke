  .text
  .globl mmap
  .type mmap, @function

#! file-offset 0x159140
#! rip-offset  0x119140
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode                
.mmap:                        #        0x119140  0      OPC=<label>           
  pushq %rbx                  #  1     0x119140  1      OPC=pushq_r64_1       
  subl $0x10, %esp            #  2     0x119141  3      OPC=subl_r32_imm8     
  addq %r15, %rsp             #  3     0x119144  3      OPC=addq_r64_r64      
  movl 0xff600f3(%rip), %eax  #  4     0x119147  6      OPC=movl_r32_m32      
  movl %edi, 0xc(%rsp)        #  5     0x11914d  4      OPC=movl_m32_r32      
  leal 0xc(%rsp), %edi        #  6     0x119151  4      OPC=leal_r32_m16      
  nop                         #  7     0x119155  1      OPC=nop               
  nop                         #  8     0x119156  1      OPC=nop               
  nop                         #  9     0x119157  1      OPC=nop               
  andl $0xffffffe0, %eax      #  10    0x119158  6      OPC=andl_r32_imm32    
  nop                         #  11    0x11915e  1      OPC=nop               
  nop                         #  12    0x11915f  1      OPC=nop               
  nop                         #  13    0x119160  1      OPC=nop               
  addq %r15, %rax             #  14    0x119161  3      OPC=addq_r64_r64      
  callq %rax                  #  15    0x119164  2      OPC=callq_r64         
  testl %eax, %eax            #  16    0x119166  2      OPC=testl_r32_r32     
  movl %eax, %ebx             #  17    0x119168  2      OPC=movl_r32_r32      
  jne .L_119180               #  18    0x11916a  2      OPC=jne_label         
  movl 0xc(%rsp), %eax        #  19    0x11916c  4      OPC=movl_r32_m32      
  addl $0x10, %esp            #  20    0x119170  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  21    0x119173  3      OPC=addq_r64_r64      
  popq %rbx                   #  22    0x119176  1      OPC=popq_r64_1        
  popq %r11                   #  23    0x119177  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  24    0x119179  7      OPC=andl_r32_imm32    
  nop                         #  25    0x119180  1      OPC=nop               
  nop                         #  26    0x119181  1      OPC=nop               
  nop                         #  27    0x119182  1      OPC=nop               
  nop                         #  28    0x119183  1      OPC=nop               
  addq %r15, %r11             #  29    0x119184  3      OPC=addq_r64_r64      
  jmpq %r11                   #  30    0x119187  3      OPC=jmpq_r64          
  nop                         #  31    0x11918a  1      OPC=nop               
  nop                         #  32    0x11918b  1      OPC=nop               
  nop                         #  33    0x11918c  1      OPC=nop               
.L_119180:                    #        0x11918d  0      OPC=<label>           
  nop                         #  34    0x11918d  1      OPC=nop               
  nop                         #  35    0x11918e  1      OPC=nop               
  nop                         #  36    0x11918f  1      OPC=nop               
  nop                         #  37    0x119190  1      OPC=nop               
  nop                         #  38    0x119191  1      OPC=nop               
  nop                         #  39    0x119192  1      OPC=nop               
  nop                         #  40    0x119193  1      OPC=nop               
  nop                         #  41    0x119194  1      OPC=nop               
  nop                         #  42    0x119195  1      OPC=nop               
  nop                         #  43    0x119196  1      OPC=nop               
  nop                         #  44    0x119197  1      OPC=nop               
  nop                         #  45    0x119198  1      OPC=nop               
  nop                         #  46    0x119199  1      OPC=nop               
  nop                         #  47    0x11919a  1      OPC=nop               
  nop                         #  48    0x11919b  1      OPC=nop               
  nop                         #  49    0x11919c  1      OPC=nop               
  nop                         #  50    0x11919d  1      OPC=nop               
  nop                         #  51    0x11919e  1      OPC=nop               
  nop                         #  52    0x11919f  1      OPC=nop               
  nop                         #  53    0x1191a0  1      OPC=nop               
  nop                         #  54    0x1191a1  1      OPC=nop               
  nop                         #  55    0x1191a2  1      OPC=nop               
  nop                         #  56    0x1191a3  1      OPC=nop               
  nop                         #  57    0x1191a4  1      OPC=nop               
  nop                         #  58    0x1191a5  1      OPC=nop               
  nop                         #  59    0x1191a6  1      OPC=nop               
  nop                         #  60    0x1191a7  1      OPC=nop               
  callq .__errno              #  61    0x1191a8  5      OPC=callq_label       
  movl %eax, %eax             #  62    0x1191ad  2      OPC=movl_r32_r32      
  movl %eax, %eax             #  63    0x1191af  2      OPC=movl_r32_r32      
  movl %ebx, (%r15,%rax,1)    #  64    0x1191b1  4      OPC=movl_m32_r32      
  addl $0x10, %esp            #  65    0x1191b5  3      OPC=addl_r32_imm8     
  addq %r15, %rsp             #  66    0x1191b8  3      OPC=addq_r64_r64      
  movl $0xffffffff, %eax      #  67    0x1191bb  6      OPC=movl_r32_imm32_1  
  popq %rbx                   #  68    0x1191c1  1      OPC=popq_r64_1        
  popq %r11                   #  69    0x1191c2  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d     #  70    0x1191c4  7      OPC=andl_r32_imm32    
  nop                         #  71    0x1191cb  1      OPC=nop               
  nop                         #  72    0x1191cc  1      OPC=nop               
  nop                         #  73    0x1191cd  1      OPC=nop               
  nop                         #  74    0x1191ce  1      OPC=nop               
  addq %r15, %r11             #  75    0x1191cf  3      OPC=addq_r64_r64      
  jmpq %r11                   #  76    0x1191d2  3      OPC=jmpq_r64          
                                                                              
.size mmap, .-mmap

