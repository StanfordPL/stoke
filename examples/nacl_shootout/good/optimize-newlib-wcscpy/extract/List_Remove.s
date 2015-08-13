  .text
  .globl List_Remove
  .type List_Remove, @function

#! file-offset 0x66040
#! rip-offset  0x26040
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Remove:                  #        0x26040  0      OPC=<label>         
  movl %edi, %edi              #  1     0x26040  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x26042  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x26044  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx     #  4     0x26046  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  5     0x2604a  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx  #  6     0x2604c  5      OPC=movl_r32_m32    
  leal (%rcx,%rdx,4), %eax     #  7     0x26051  3      OPC=leal_r32_m16    
  movl %edi, %edi              #  8     0x26054  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %r9d  #  9     0x26056  5      OPC=movl_r32_m32    
  leal (%rcx,%r9,4), %r8d      #  10    0x2605b  4      OPC=leal_r32_m16    
  nop                          #  11    0x2605f  1      OPC=nop             
  subl %edx, %r9d              #  12    0x26060  3      OPC=subl_r32_r32    
  movl %edi, %edi              #  13    0x26063  2      OPC=movl_r32_r32    
  movl %r9d, 0xc(%r15,%rdi,1)  #  14    0x26065  5      OPC=movl_m32_r32    
  movl %edi, %edi              #  15    0x2606a  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  16    0x2606c  9      OPC=movl_m32_imm32  
  cmpl %r8d, %eax              #  17    0x26075  3      OPC=cmpl_r32_r32    
  jbe .L_260a0                 #  18    0x26078  2      OPC=jbe_label       
  jmpq .L_260c0                #  19    0x2607a  2      OPC=jmpq_label      
  nop                          #  20    0x2607c  1      OPC=nop             
  nop                          #  21    0x2607d  1      OPC=nop             
  nop                          #  22    0x2607e  1      OPC=nop             
  nop                          #  23    0x2607f  1      OPC=nop             
.L_26080:                      #        0x26080  0      OPC=<label>         
  movl %ecx, %ecx              #  24    0x26080  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)     #  25    0x26082  4      OPC=movl_m32_r32    
  addl $0x4, %ecx              #  26    0x26086  3      OPC=addl_r32_imm8   
  addl $0x4, %eax              #  27    0x26089  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  28    0x2608c  3      OPC=cmpl_r32_r32    
  jb .L_260c0                  #  29    0x2608f  2      OPC=jb_label        
  nop                          #  30    0x26091  1      OPC=nop             
  nop                          #  31    0x26092  1      OPC=nop             
  nop                          #  32    0x26093  1      OPC=nop             
  nop                          #  33    0x26094  1      OPC=nop             
  nop                          #  34    0x26095  1      OPC=nop             
  nop                          #  35    0x26096  1      OPC=nop             
  nop                          #  36    0x26097  1      OPC=nop             
  nop                          #  37    0x26098  1      OPC=nop             
  nop                          #  38    0x26099  1      OPC=nop             
  nop                          #  39    0x2609a  1      OPC=nop             
  nop                          #  40    0x2609b  1      OPC=nop             
  nop                          #  41    0x2609c  1      OPC=nop             
  nop                          #  42    0x2609d  1      OPC=nop             
  nop                          #  43    0x2609e  1      OPC=nop             
  nop                          #  44    0x2609f  1      OPC=nop             
.L_260a0:                      #        0x260a0  0      OPC=<label>         
  movl %eax, %eax              #  45    0x260a0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx     #  46    0x260a2  4      OPC=movl_r32_m32    
  cmpl %esi, %edx              #  47    0x260a6  2      OPC=cmpl_r32_r32    
  jne .L_26080                 #  48    0x260a8  2      OPC=jne_label       
  movl %edi, %edi              #  49    0x260aa  2      OPC=movl_r32_r32    
  subl $0x1, 0xc(%r15,%rdi,1)  #  50    0x260ac  6      OPC=subl_m32_imm8   
  addl $0x4, %eax              #  51    0x260b2  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  52    0x260b5  3      OPC=cmpl_r32_r32    
  jae .L_260a0                 #  53    0x260b8  2      OPC=jae_label       
  nop                          #  54    0x260ba  1      OPC=nop             
  nop                          #  55    0x260bb  1      OPC=nop             
  nop                          #  56    0x260bc  1      OPC=nop             
  nop                          #  57    0x260bd  1      OPC=nop             
  nop                          #  58    0x260be  1      OPC=nop             
  nop                          #  59    0x260bf  1      OPC=nop             
.L_260c0:                      #        0x260c0  0      OPC=<label>         
  popq %r11                    #  60    0x260c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  61    0x260c2  7      OPC=andl_r32_imm32  
  nop                          #  62    0x260c9  1      OPC=nop             
  nop                          #  63    0x260ca  1      OPC=nop             
  nop                          #  64    0x260cb  1      OPC=nop             
  nop                          #  65    0x260cc  1      OPC=nop             
  addq %r15, %r11              #  66    0x260cd  3      OPC=addq_r64_r64    
  jmpq %r11                    #  67    0x260d0  3      OPC=jmpq_r64        
  nop                          #  68    0x260d3  1      OPC=nop             
  nop                          #  69    0x260d4  1      OPC=nop             
  nop                          #  70    0x260d5  1      OPC=nop             
  nop                          #  71    0x260d6  1      OPC=nop             
  nop                          #  72    0x260d7  1      OPC=nop             
  nop                          #  73    0x260d8  1      OPC=nop             
  nop                          #  74    0x260d9  1      OPC=nop             
  nop                          #  75    0x260da  1      OPC=nop             
  nop                          #  76    0x260db  1      OPC=nop             
  nop                          #  77    0x260dc  1      OPC=nop             
  nop                          #  78    0x260dd  1      OPC=nop             
  nop                          #  79    0x260de  1      OPC=nop             
  nop                          #  80    0x260df  1      OPC=nop             
  nop                          #  81    0x260e0  1      OPC=nop             
  nop                          #  82    0x260e1  1      OPC=nop             
  nop                          #  83    0x260e2  1      OPC=nop             
  nop                          #  84    0x260e3  1      OPC=nop             
  nop                          #  85    0x260e4  1      OPC=nop             
  nop                          #  86    0x260e5  1      OPC=nop             
  nop                          #  87    0x260e6  1      OPC=nop             
                                                                            
.size List_Remove, .-List_Remove

