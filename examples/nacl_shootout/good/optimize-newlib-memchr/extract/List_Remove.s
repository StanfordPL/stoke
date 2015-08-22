  .text
  .globl List_Remove
  .type List_Remove, @function

#! file-offset 0x665c0
#! rip-offset  0x265c0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_Remove:                  #        0x265c0  0      OPC=<label>         
  movl %edi, %edi              #  1     0x265c0  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x265c2  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0x265c4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %ecx     #  4     0x265c6  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  5     0x265ca  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx  #  6     0x265cc  5      OPC=movl_r32_m32    
  leal (%rcx,%rdx,4), %eax     #  7     0x265d1  3      OPC=leal_r32_m16    
  movl %edi, %edi              #  8     0x265d4  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %r9d  #  9     0x265d6  5      OPC=movl_r32_m32    
  leal (%rcx,%r9,4), %r8d      #  10    0x265db  4      OPC=leal_r32_m16    
  nop                          #  11    0x265df  1      OPC=nop             
  subl %edx, %r9d              #  12    0x265e0  3      OPC=subl_r32_r32    
  movl %edi, %edi              #  13    0x265e3  2      OPC=movl_r32_r32    
  movl %r9d, 0xc(%r15,%rdi,1)  #  14    0x265e5  5      OPC=movl_m32_r32    
  movl %edi, %edi              #  15    0x265ea  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  16    0x265ec  9      OPC=movl_m32_imm32  
  cmpl %r8d, %eax              #  17    0x265f5  3      OPC=cmpl_r32_r32    
  jbe .L_26620                 #  18    0x265f8  2      OPC=jbe_label       
  jmpq .L_26640                #  19    0x265fa  2      OPC=jmpq_label      
  nop                          #  20    0x265fc  1      OPC=nop             
  nop                          #  21    0x265fd  1      OPC=nop             
  nop                          #  22    0x265fe  1      OPC=nop             
  nop                          #  23    0x265ff  1      OPC=nop             
.L_26600:                      #        0x26600  0      OPC=<label>         
  movl %ecx, %ecx              #  24    0x26600  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rcx,1)     #  25    0x26602  4      OPC=movl_m32_r32    
  addl $0x4, %ecx              #  26    0x26606  3      OPC=addl_r32_imm8   
  addl $0x4, %eax              #  27    0x26609  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  28    0x2660c  3      OPC=cmpl_r32_r32    
  jb .L_26640                  #  29    0x2660f  2      OPC=jb_label        
  nop                          #  30    0x26611  1      OPC=nop             
  nop                          #  31    0x26612  1      OPC=nop             
  nop                          #  32    0x26613  1      OPC=nop             
  nop                          #  33    0x26614  1      OPC=nop             
  nop                          #  34    0x26615  1      OPC=nop             
  nop                          #  35    0x26616  1      OPC=nop             
  nop                          #  36    0x26617  1      OPC=nop             
  nop                          #  37    0x26618  1      OPC=nop             
  nop                          #  38    0x26619  1      OPC=nop             
  nop                          #  39    0x2661a  1      OPC=nop             
  nop                          #  40    0x2661b  1      OPC=nop             
  nop                          #  41    0x2661c  1      OPC=nop             
  nop                          #  42    0x2661d  1      OPC=nop             
  nop                          #  43    0x2661e  1      OPC=nop             
  nop                          #  44    0x2661f  1      OPC=nop             
.L_26620:                      #        0x26620  0      OPC=<label>         
  movl %eax, %eax              #  45    0x26620  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx     #  46    0x26622  4      OPC=movl_r32_m32    
  cmpl %esi, %edx              #  47    0x26626  2      OPC=cmpl_r32_r32    
  jne .L_26600                 #  48    0x26628  2      OPC=jne_label       
  movl %edi, %edi              #  49    0x2662a  2      OPC=movl_r32_r32    
  subl $0x1, 0xc(%r15,%rdi,1)  #  50    0x2662c  6      OPC=subl_m32_imm8   
  addl $0x4, %eax              #  51    0x26632  3      OPC=addl_r32_imm8   
  cmpl %eax, %r8d              #  52    0x26635  3      OPC=cmpl_r32_r32    
  jae .L_26620                 #  53    0x26638  2      OPC=jae_label       
  nop                          #  54    0x2663a  1      OPC=nop             
  nop                          #  55    0x2663b  1      OPC=nop             
  nop                          #  56    0x2663c  1      OPC=nop             
  nop                          #  57    0x2663d  1      OPC=nop             
  nop                          #  58    0x2663e  1      OPC=nop             
  nop                          #  59    0x2663f  1      OPC=nop             
.L_26640:                      #        0x26640  0      OPC=<label>         
  popq %r11                    #  60    0x26640  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  61    0x26642  7      OPC=andl_r32_imm32  
  nop                          #  62    0x26649  1      OPC=nop             
  nop                          #  63    0x2664a  1      OPC=nop             
  nop                          #  64    0x2664b  1      OPC=nop             
  nop                          #  65    0x2664c  1      OPC=nop             
  addq %r15, %r11              #  66    0x2664d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  67    0x26650  3      OPC=jmpq_r64        
  nop                          #  68    0x26653  1      OPC=nop             
  nop                          #  69    0x26654  1      OPC=nop             
  nop                          #  70    0x26655  1      OPC=nop             
  nop                          #  71    0x26656  1      OPC=nop             
  nop                          #  72    0x26657  1      OPC=nop             
  nop                          #  73    0x26658  1      OPC=nop             
  nop                          #  74    0x26659  1      OPC=nop             
  nop                          #  75    0x2665a  1      OPC=nop             
  nop                          #  76    0x2665b  1      OPC=nop             
  nop                          #  77    0x2665c  1      OPC=nop             
  nop                          #  78    0x2665d  1      OPC=nop             
  nop                          #  79    0x2665e  1      OPC=nop             
  nop                          #  80    0x2665f  1      OPC=nop             
  nop                          #  81    0x26660  1      OPC=nop             
  nop                          #  82    0x26661  1      OPC=nop             
  nop                          #  83    0x26662  1      OPC=nop             
  nop                          #  84    0x26663  1      OPC=nop             
  nop                          #  85    0x26664  1      OPC=nop             
  nop                          #  86    0x26665  1      OPC=nop             
  nop                          #  87    0x26666  1      OPC=nop             
                                                                            
.size List_Remove, .-List_Remove

