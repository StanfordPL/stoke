  .text
  .globl List_Add
  .type List_Add, @function

#! file-offset 0x671a0
#! rip-offset  0x271a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Add:                     #        0x271a0  0      OPC=<label>         
  pushq %r12                   #  1     0x271a0  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x271a2  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x271a3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x271a6  3      OPC=addq_r64_r64    
  movl %edi, %ebx              #  5     0x271a9  2      OPC=movl_r32_r32    
  movl %esi, %r12d             #  6     0x271ab  3      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  7     0x271ae  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  8     0x271b0  5      OPC=movl_r32_m32    
  movl %ebx, %ebx              #  9     0x271b5  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %edx  #  10    0x271b7  5      OPC=movl_r32_m32    
  subl $0x1, %edx              #  11    0x271bc  3      OPC=subl_r32_imm8   
  nop                          #  12    0x271bf  1      OPC=nop             
  cmpl %edx, %eax              #  13    0x271c0  2      OPC=cmpl_r32_r32    
  jl .L_27200                  #  14    0x271c2  2      OPC=jl_label        
  movl %ebx, %edi              #  15    0x271c4  2      OPC=movl_r32_r32    
  nop                          #  16    0x271c6  1      OPC=nop             
  nop                          #  17    0x271c7  1      OPC=nop             
  nop                          #  18    0x271c8  1      OPC=nop             
  nop                          #  19    0x271c9  1      OPC=nop             
  nop                          #  20    0x271ca  1      OPC=nop             
  nop                          #  21    0x271cb  1      OPC=nop             
  nop                          #  22    0x271cc  1      OPC=nop             
  nop                          #  23    0x271cd  1      OPC=nop             
  nop                          #  24    0x271ce  1      OPC=nop             
  nop                          #  25    0x271cf  1      OPC=nop             
  nop                          #  26    0x271d0  1      OPC=nop             
  nop                          #  27    0x271d1  1      OPC=nop             
  nop                          #  28    0x271d2  1      OPC=nop             
  nop                          #  29    0x271d3  1      OPC=nop             
  nop                          #  30    0x271d4  1      OPC=nop             
  nop                          #  31    0x271d5  1      OPC=nop             
  nop                          #  32    0x271d6  1      OPC=nop             
  nop                          #  33    0x271d7  1      OPC=nop             
  nop                          #  34    0x271d8  1      OPC=nop             
  nop                          #  35    0x271d9  1      OPC=nop             
  nop                          #  36    0x271da  1      OPC=nop             
  callq .MakeRoom              #  37    0x271db  5      OPC=callq_label     
  movl %ebx, %ebx              #  38    0x271e0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  39    0x271e2  5      OPC=movl_r32_m32    
  nop                          #  40    0x271e7  1      OPC=nop             
  nop                          #  41    0x271e8  1      OPC=nop             
  nop                          #  42    0x271e9  1      OPC=nop             
  nop                          #  43    0x271ea  1      OPC=nop             
  nop                          #  44    0x271eb  1      OPC=nop             
  nop                          #  45    0x271ec  1      OPC=nop             
  nop                          #  46    0x271ed  1      OPC=nop             
  nop                          #  47    0x271ee  1      OPC=nop             
  nop                          #  48    0x271ef  1      OPC=nop             
  nop                          #  49    0x271f0  1      OPC=nop             
  nop                          #  50    0x271f1  1      OPC=nop             
  nop                          #  51    0x271f2  1      OPC=nop             
  nop                          #  52    0x271f3  1      OPC=nop             
  nop                          #  53    0x271f4  1      OPC=nop             
  nop                          #  54    0x271f5  1      OPC=nop             
  nop                          #  55    0x271f6  1      OPC=nop             
  nop                          #  56    0x271f7  1      OPC=nop             
  nop                          #  57    0x271f8  1      OPC=nop             
  nop                          #  58    0x271f9  1      OPC=nop             
  nop                          #  59    0x271fa  1      OPC=nop             
  nop                          #  60    0x271fb  1      OPC=nop             
  nop                          #  61    0x271fc  1      OPC=nop             
  nop                          #  62    0x271fd  1      OPC=nop             
  nop                          #  63    0x271fe  1      OPC=nop             
  nop                          #  64    0x271ff  1      OPC=nop             
.L_27200:                      #        0x27200  0      OPC=<label>         
  movl %ebx, %ebx              #  65    0x27200  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx     #  66    0x27202  4      OPC=movl_r32_m32    
  addl $0x1, %eax              #  67    0x27206  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx              #  68    0x27209  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rbx,1)  #  69    0x2720b  5      OPC=movl_m32_r32    
  leal (%rdx,%rax,4), %eax     #  70    0x27210  3      OPC=leal_r32_m16    
  movl %eax, %eax              #  71    0x27213  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  72    0x27215  4      OPC=movl_m32_r32    
  addl $0x8, %esp              #  73    0x27219  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  74    0x2721c  3      OPC=addq_r64_r64    
  popq %rbx                    #  75    0x2721f  1      OPC=popq_r64_1      
  popq %r12                    #  76    0x27220  2      OPC=popq_r64_1      
  popq %r11                    #  77    0x27222  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  78    0x27224  7      OPC=andl_r32_imm32  
  nop                          #  79    0x2722b  1      OPC=nop             
  nop                          #  80    0x2722c  1      OPC=nop             
  nop                          #  81    0x2722d  1      OPC=nop             
  nop                          #  82    0x2722e  1      OPC=nop             
  addq %r15, %r11              #  83    0x2722f  3      OPC=addq_r64_r64    
  jmpq %r11                    #  84    0x27232  3      OPC=jmpq_r64        
  nop                          #  85    0x27235  1      OPC=nop             
  nop                          #  86    0x27236  1      OPC=nop             
  nop                          #  87    0x27237  1      OPC=nop             
  nop                          #  88    0x27238  1      OPC=nop             
  nop                          #  89    0x27239  1      OPC=nop             
  nop                          #  90    0x2723a  1      OPC=nop             
  nop                          #  91    0x2723b  1      OPC=nop             
  nop                          #  92    0x2723c  1      OPC=nop             
  nop                          #  93    0x2723d  1      OPC=nop             
  nop                          #  94    0x2723e  1      OPC=nop             
  nop                          #  95    0x2723f  1      OPC=nop             
  nop                          #  96    0x27240  1      OPC=nop             
  nop                          #  97    0x27241  1      OPC=nop             
  nop                          #  98    0x27242  1      OPC=nop             
  nop                          #  99    0x27243  1      OPC=nop             
  nop                          #  100   0x27244  1      OPC=nop             
  nop                          #  101   0x27245  1      OPC=nop             
  nop                          #  102   0x27246  1      OPC=nop             
                                                                            
.size List_Add, .-List_Add

