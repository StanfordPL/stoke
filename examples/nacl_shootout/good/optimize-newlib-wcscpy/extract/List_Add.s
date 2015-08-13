  .text
  .globl List_Add
  .type List_Add, @function

#! file-offset 0x67180
#! rip-offset  0x27180
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Add:                     #        0x27180  0      OPC=<label>         
  pushq %r12                   #  1     0x27180  2      OPC=pushq_r64_1     
  pushq %rbx                   #  2     0x27182  1      OPC=pushq_r64_1     
  subl $0x8, %esp              #  3     0x27183  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  4     0x27186  3      OPC=addq_r64_r64    
  movl %edi, %ebx              #  5     0x27189  2      OPC=movl_r32_r32    
  movl %esi, %r12d             #  6     0x2718b  3      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  7     0x2718e  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  8     0x27190  5      OPC=movl_r32_m32    
  movl %ebx, %ebx              #  9     0x27195  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %edx  #  10    0x27197  5      OPC=movl_r32_m32    
  subl $0x1, %edx              #  11    0x2719c  3      OPC=subl_r32_imm8   
  nop                          #  12    0x2719f  1      OPC=nop             
  cmpl %edx, %eax              #  13    0x271a0  2      OPC=cmpl_r32_r32    
  jl .L_271e0                  #  14    0x271a2  2      OPC=jl_label        
  movl %ebx, %edi              #  15    0x271a4  2      OPC=movl_r32_r32    
  nop                          #  16    0x271a6  1      OPC=nop             
  nop                          #  17    0x271a7  1      OPC=nop             
  nop                          #  18    0x271a8  1      OPC=nop             
  nop                          #  19    0x271a9  1      OPC=nop             
  nop                          #  20    0x271aa  1      OPC=nop             
  nop                          #  21    0x271ab  1      OPC=nop             
  nop                          #  22    0x271ac  1      OPC=nop             
  nop                          #  23    0x271ad  1      OPC=nop             
  nop                          #  24    0x271ae  1      OPC=nop             
  nop                          #  25    0x271af  1      OPC=nop             
  nop                          #  26    0x271b0  1      OPC=nop             
  nop                          #  27    0x271b1  1      OPC=nop             
  nop                          #  28    0x271b2  1      OPC=nop             
  nop                          #  29    0x271b3  1      OPC=nop             
  nop                          #  30    0x271b4  1      OPC=nop             
  nop                          #  31    0x271b5  1      OPC=nop             
  nop                          #  32    0x271b6  1      OPC=nop             
  nop                          #  33    0x271b7  1      OPC=nop             
  nop                          #  34    0x271b8  1      OPC=nop             
  nop                          #  35    0x271b9  1      OPC=nop             
  nop                          #  36    0x271ba  1      OPC=nop             
  callq .MakeRoom              #  37    0x271bb  5      OPC=callq_label     
  movl %ebx, %ebx              #  38    0x271c0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rbx,1), %eax  #  39    0x271c2  5      OPC=movl_r32_m32    
  nop                          #  40    0x271c7  1      OPC=nop             
  nop                          #  41    0x271c8  1      OPC=nop             
  nop                          #  42    0x271c9  1      OPC=nop             
  nop                          #  43    0x271ca  1      OPC=nop             
  nop                          #  44    0x271cb  1      OPC=nop             
  nop                          #  45    0x271cc  1      OPC=nop             
  nop                          #  46    0x271cd  1      OPC=nop             
  nop                          #  47    0x271ce  1      OPC=nop             
  nop                          #  48    0x271cf  1      OPC=nop             
  nop                          #  49    0x271d0  1      OPC=nop             
  nop                          #  50    0x271d1  1      OPC=nop             
  nop                          #  51    0x271d2  1      OPC=nop             
  nop                          #  52    0x271d3  1      OPC=nop             
  nop                          #  53    0x271d4  1      OPC=nop             
  nop                          #  54    0x271d5  1      OPC=nop             
  nop                          #  55    0x271d6  1      OPC=nop             
  nop                          #  56    0x271d7  1      OPC=nop             
  nop                          #  57    0x271d8  1      OPC=nop             
  nop                          #  58    0x271d9  1      OPC=nop             
  nop                          #  59    0x271da  1      OPC=nop             
  nop                          #  60    0x271db  1      OPC=nop             
  nop                          #  61    0x271dc  1      OPC=nop             
  nop                          #  62    0x271dd  1      OPC=nop             
  nop                          #  63    0x271de  1      OPC=nop             
  nop                          #  64    0x271df  1      OPC=nop             
.L_271e0:                      #        0x271e0  0      OPC=<label>         
  movl %ebx, %ebx              #  65    0x271e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx     #  66    0x271e2  4      OPC=movl_r32_m32    
  addl $0x1, %eax              #  67    0x271e6  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx              #  68    0x271e9  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rbx,1)  #  69    0x271eb  5      OPC=movl_m32_r32    
  leal (%rdx,%rax,4), %eax     #  70    0x271f0  3      OPC=leal_r32_m16    
  movl %eax, %eax              #  71    0x271f3  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  72    0x271f5  4      OPC=movl_m32_r32    
  addl $0x8, %esp              #  73    0x271f9  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  74    0x271fc  3      OPC=addq_r64_r64    
  popq %rbx                    #  75    0x271ff  1      OPC=popq_r64_1      
  popq %r12                    #  76    0x27200  2      OPC=popq_r64_1      
  popq %r11                    #  77    0x27202  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  78    0x27204  7      OPC=andl_r32_imm32  
  nop                          #  79    0x2720b  1      OPC=nop             
  nop                          #  80    0x2720c  1      OPC=nop             
  nop                          #  81    0x2720d  1      OPC=nop             
  nop                          #  82    0x2720e  1      OPC=nop             
  addq %r15, %r11              #  83    0x2720f  3      OPC=addq_r64_r64    
  jmpq %r11                    #  84    0x27212  3      OPC=jmpq_r64        
  nop                          #  85    0x27215  1      OPC=nop             
  nop                          #  86    0x27216  1      OPC=nop             
  nop                          #  87    0x27217  1      OPC=nop             
  nop                          #  88    0x27218  1      OPC=nop             
  nop                          #  89    0x27219  1      OPC=nop             
  nop                          #  90    0x2721a  1      OPC=nop             
  nop                          #  91    0x2721b  1      OPC=nop             
  nop                          #  92    0x2721c  1      OPC=nop             
  nop                          #  93    0x2721d  1      OPC=nop             
  nop                          #  94    0x2721e  1      OPC=nop             
  nop                          #  95    0x2721f  1      OPC=nop             
  nop                          #  96    0x27220  1      OPC=nop             
  nop                          #  97    0x27221  1      OPC=nop             
  nop                          #  98    0x27222  1      OPC=nop             
  nop                          #  99    0x27223  1      OPC=nop             
  nop                          #  100   0x27224  1      OPC=nop             
  nop                          #  101   0x27225  1      OPC=nop             
  nop                          #  102   0x27226  1      OPC=nop             
                                                                            
.size List_Add, .-List_Add

