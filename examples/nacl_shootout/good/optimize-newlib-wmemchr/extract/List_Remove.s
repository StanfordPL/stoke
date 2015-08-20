  .text
  .globl List_Remove
  .type List_Remove, @function

#! file-offset 0x66060
#! rip-offset  0x26060
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Remove:                  #        0x26060  0      OPC=<label>         
  movl %edi, %edi              #  1     0x26060  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x26062  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x26064  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx     #  4     0x26066  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  5     0x2606a  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx  #  6     0x2606c  5      OPC=movl_r32_m32    
  leal (%rcx,%rdx,4), %eax     #  7     0x26071  3      OPC=leal_r32_m16    
  movl %edi, %edi              #  8     0x26074  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %r9d  #  9     0x26076  5      OPC=movl_r32_m32    
  leal (%rcx,%r9,4), %r8d      #  10    0x2607b  4      OPC=leal_r32_m16    
  nop                          #  11    0x2607f  1      OPC=nop             
  subl %edx, %r9d              #  12    0x26080  3      OPC=subl_r32_r32    
  movl %edi, %edi              #  13    0x26083  2      OPC=movl_r32_r32    
  movl %r9d, 0xc(%r15,%rdi,1)  #  14    0x26085  5      OPC=movl_m32_r32    
  movl %edi, %edi              #  15    0x2608a  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  16    0x2608c  9      OPC=movl_m32_imm32  
  cmpl %r8d, %eax              #  17    0x26095  3      OPC=cmpl_r32_r32    
  jbe .L_260c0                 #  18    0x26098  2      OPC=jbe_label       
  jmpq .L_260e0                #  19    0x2609a  2      OPC=jmpq_label      
  nop                          #  20    0x2609c  1      OPC=nop             
  nop                          #  21    0x2609d  1      OPC=nop             
  nop                          #  22    0x2609e  1      OPC=nop             
  nop                          #  23    0x2609f  1      OPC=nop             
.L_260a0:                      #        0x260a0  0      OPC=<label>         
  movl %ecx, %ecx              #  24    0x260a0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)     #  25    0x260a2  4      OPC=movl_m32_r32    
  addl $0x4, %ecx              #  26    0x260a6  3      OPC=addl_r32_imm8   
  addl $0x4, %eax              #  27    0x260a9  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  28    0x260ac  3      OPC=cmpl_r32_r32    
  jb .L_260e0                  #  29    0x260af  2      OPC=jb_label        
  nop                          #  30    0x260b1  1      OPC=nop             
  nop                          #  31    0x260b2  1      OPC=nop             
  nop                          #  32    0x260b3  1      OPC=nop             
  nop                          #  33    0x260b4  1      OPC=nop             
  nop                          #  34    0x260b5  1      OPC=nop             
  nop                          #  35    0x260b6  1      OPC=nop             
  nop                          #  36    0x260b7  1      OPC=nop             
  nop                          #  37    0x260b8  1      OPC=nop             
  nop                          #  38    0x260b9  1      OPC=nop             
  nop                          #  39    0x260ba  1      OPC=nop             
  nop                          #  40    0x260bb  1      OPC=nop             
  nop                          #  41    0x260bc  1      OPC=nop             
  nop                          #  42    0x260bd  1      OPC=nop             
  nop                          #  43    0x260be  1      OPC=nop             
  nop                          #  44    0x260bf  1      OPC=nop             
.L_260c0:                      #        0x260c0  0      OPC=<label>         
  movl %eax, %eax              #  45    0x260c0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx     #  46    0x260c2  4      OPC=movl_r32_m32    
  cmpl %esi, %edx              #  47    0x260c6  2      OPC=cmpl_r32_r32    
  jne .L_260a0                 #  48    0x260c8  2      OPC=jne_label       
  movl %edi, %edi              #  49    0x260ca  2      OPC=movl_r32_r32    
  subl $0x1, 0xc(%r15,%rdi,1)  #  50    0x260cc  6      OPC=subl_m32_imm8   
  addl $0x4, %eax              #  51    0x260d2  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  52    0x260d5  3      OPC=cmpl_r32_r32    
  jae .L_260c0                 #  53    0x260d8  2      OPC=jae_label       
  nop                          #  54    0x260da  1      OPC=nop             
  nop                          #  55    0x260db  1      OPC=nop             
  nop                          #  56    0x260dc  1      OPC=nop             
  nop                          #  57    0x260dd  1      OPC=nop             
  nop                          #  58    0x260de  1      OPC=nop             
  nop                          #  59    0x260df  1      OPC=nop             
.L_260e0:                      #        0x260e0  0      OPC=<label>         
  popq %r11                    #  60    0x260e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  61    0x260e2  7      OPC=andl_r32_imm32  
  nop                          #  62    0x260e9  1      OPC=nop             
  nop                          #  63    0x260ea  1      OPC=nop             
  nop                          #  64    0x260eb  1      OPC=nop             
  nop                          #  65    0x260ec  1      OPC=nop             
  addq %r15, %r11              #  66    0x260ed  3      OPC=addq_r64_r64    
  jmpq %r11                    #  67    0x260f0  3      OPC=jmpq_r64        
  nop                          #  68    0x260f3  1      OPC=nop             
  nop                          #  69    0x260f4  1      OPC=nop             
  nop                          #  70    0x260f5  1      OPC=nop             
  nop                          #  71    0x260f6  1      OPC=nop             
  nop                          #  72    0x260f7  1      OPC=nop             
  nop                          #  73    0x260f8  1      OPC=nop             
  nop                          #  74    0x260f9  1      OPC=nop             
  nop                          #  75    0x260fa  1      OPC=nop             
  nop                          #  76    0x260fb  1      OPC=nop             
  nop                          #  77    0x260fc  1      OPC=nop             
  nop                          #  78    0x260fd  1      OPC=nop             
  nop                          #  79    0x260fe  1      OPC=nop             
  nop                          #  80    0x260ff  1      OPC=nop             
  nop                          #  81    0x26100  1      OPC=nop             
  nop                          #  82    0x26101  1      OPC=nop             
  nop                          #  83    0x26102  1      OPC=nop             
  nop                          #  84    0x26103  1      OPC=nop             
  nop                          #  85    0x26104  1      OPC=nop             
  nop                          #  86    0x26105  1      OPC=nop             
  nop                          #  87    0x26106  1      OPC=nop             
                                                                            
.size List_Remove, .-List_Remove

