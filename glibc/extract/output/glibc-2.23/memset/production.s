  .text
  .globl __GI_memset
  .type __GI_memset, @function

#! file-offset 0x81bf0
#! rip-offset  0x81bf0
#! capacity    240 bytes

# Text                              #  Line  RIP      Bytes  Opcode                   
.__GI_memset:                       #        0x81bf0  0      OPC=<label>              
  movd %esi, %xmm0                  #  1     0x81bf0  4      OPC=movd_xmm_r32         
  movq %rdi, %rax                   #  2     0x81bf4  3      OPC=movq_r64_r64         
  punpcklbw %xmm0, %xmm0            #  3     0x81bf7  4      OPC=punpcklbw_xmm_xmm    
  punpcklwd %xmm0, %xmm0            #  4     0x81bfb  4      OPC=punpcklwd_xmm_xmm    
  pshufd $0x0, %xmm0, %xmm0         #  5     0x81bff  5      OPC=pshufd_xmm_xmm_imm8  
  cmpq $0x40, %rdx                  #  6     0x81c04  4      OPC=cmpq_r64_imm8        
  ja .L_81c40                       #  7     0x81c08  2      OPC=ja_label             
  cmpq $0x10, %rdx                  #  8     0x81c0a  4      OPC=cmpq_r64_imm8        
  jbe .L_81c9e                      #  9     0x81c0e  6      OPC=jbe_label_1          
  cmpq $0x20, %rdx                  #  10    0x81c14  4      OPC=cmpq_r64_imm8        
  movdqu %xmm0, (%rdi)              #  11    0x81c18  4      OPC=movdqu_m128_xmm      
  movdqu %xmm0, -0x10(%rdi,%rdx,1)  #  12    0x81c1c  6      OPC=movdqu_m128_xmm      
  ja .L_81c30                       #  13    0x81c22  2      OPC=ja_label             
.L_81c24:                           #        0x81c24  0      OPC=<label>              
  retq                              #  14    0x81c24  1      OPC=retq                 
  nop                               #  15    0x81c25  1      OPC=nop                  
  nop                               #  16    0x81c26  1      OPC=nop                  
  nop                               #  17    0x81c27  1      OPC=nop                  
  nop                               #  18    0x81c28  1      OPC=nop                  
  nop                               #  19    0x81c29  1      OPC=nop                  
  nop                               #  20    0x81c2a  1      OPC=nop                  
  nop                               #  21    0x81c2b  1      OPC=nop                  
  nop                               #  22    0x81c2c  1      OPC=nop                  
  nop                               #  23    0x81c2d  1      OPC=nop                  
  nop                               #  24    0x81c2e  1      OPC=nop                  
  nop                               #  25    0x81c2f  1      OPC=nop                  
.L_81c30:                           #        0x81c30  0      OPC=<label>              
  movdqu %xmm0, 0x10(%rdi)          #  26    0x81c30  5      OPC=movdqu_m128_xmm      
  movdqu %xmm0, -0x20(%rdi,%rdx,1)  #  27    0x81c35  6      OPC=movdqu_m128_xmm      
  retq                              #  28    0x81c3b  1      OPC=retq                 
  nop                               #  29    0x81c3c  1      OPC=nop                  
  nop                               #  30    0x81c3d  1      OPC=nop                  
  nop                               #  31    0x81c3e  1      OPC=nop                  
  nop                               #  32    0x81c3f  1      OPC=nop                  
.L_81c40:                           #        0x81c40  0      OPC=<label>              
  leaq 0x40(%rdi), %rcx             #  33    0x81c40  4      OPC=leaq_r64_m16         
  movdqu %xmm0, (%rdi)              #  34    0x81c44  4      OPC=movdqu_m128_xmm      
  andq $0xc0, %rcx                  #  35    0x81c48  4      OPC=andq_r64_imm8        
  movdqu %xmm0, -0x10(%rdi,%rdx,1)  #  36    0x81c4c  6      OPC=movdqu_m128_xmm      
  movdqu %xmm0, 0x10(%rdi)          #  37    0x81c52  5      OPC=movdqu_m128_xmm      
  movdqu %xmm0, -0x20(%rdi,%rdx,1)  #  38    0x81c57  6      OPC=movdqu_m128_xmm      
  movdqu %xmm0, 0x20(%rdi)          #  39    0x81c5d  5      OPC=movdqu_m128_xmm      
  movdqu %xmm0, -0x30(%rdi,%rdx,1)  #  40    0x81c62  6      OPC=movdqu_m128_xmm      
  movdqu %xmm0, 0x30(%rdi)          #  41    0x81c68  5      OPC=movdqu_m128_xmm      
  movdqu %xmm0, -0x40(%rdi,%rdx,1)  #  42    0x81c6d  6      OPC=movdqu_m128_xmm      
  addq %rdi, %rdx                   #  43    0x81c73  3      OPC=addq_r64_r64         
  andq $0xc0, %rdx                  #  44    0x81c76  4      OPC=andq_r64_imm8        
  cmpq %rdx, %rcx                   #  45    0x81c7a  3      OPC=cmpq_r64_r64         
  je .L_81c24                       #  46    0x81c7d  2      OPC=je_label             
  nop                               #  47    0x81c7f  1      OPC=nop                  
.L_81c80:                           #        0x81c80  0      OPC=<label>              
  movdqa %xmm0, (%rcx)              #  48    0x81c80  4      OPC=movdqa_m128_xmm      
  movdqa %xmm0, 0x10(%rcx)          #  49    0x81c84  5      OPC=movdqa_m128_xmm      
  movdqa %xmm0, 0x20(%rcx)          #  50    0x81c89  5      OPC=movdqa_m128_xmm      
  movdqa %xmm0, 0x30(%rcx)          #  51    0x81c8e  5      OPC=movdqa_m128_xmm      
  addq $0x40, %rcx                  #  52    0x81c93  4      OPC=addq_r64_imm8        
  cmpq %rcx, %rdx                   #  53    0x81c97  3      OPC=cmpq_r64_r64         
  jne .L_81c80                      #  54    0x81c9a  2      OPC=jne_label            
  retq                              #  55    0x81c9c  1      OPC=retq                 
  nop                               #  56    0x81c9d  1      OPC=nop                  
.L_81c9e:                           #        0x81c9e  0      OPC=<label>              
  movq %xmm0, %rcx                  #  57    0x81c9e  5      OPC=movq_r64_xmm         
  testb $0x18, %dl                  #  58    0x81ca3  3      OPC=testb_r8_imm8        
  jne .L_81cca                      #  59    0x81ca6  2      OPC=jne_label            
  testb $0x4, %dl                   #  60    0x81ca8  3      OPC=testb_r8_imm8        
  jne .L_81cc3                      #  61    0x81cab  2      OPC=jne_label            
  testb $0x1, %dl                   #  62    0x81cad  3      OPC=testb_r8_imm8        
  je .L_81cb4                       #  63    0x81cb0  2      OPC=je_label             
  movb %cl, (%rdi)                  #  64    0x81cb2  2      OPC=movb_m8_r8           
.L_81cb4:                           #        0x81cb4  0      OPC=<label>              
  testb $0x2, %dl                   #  65    0x81cb4  3      OPC=testb_r8_imm8        
  je .L_81c24                       #  66    0x81cb7  6      OPC=je_label_1           
  movw %cx, -0x2(%rax,%rdx,1)       #  67    0x81cbd  5      OPC=movw_m16_r16         
  retq                              #  68    0x81cc2  1      OPC=retq                 
.L_81cc3:                           #        0x81cc3  0      OPC=<label>              
  movl %ecx, (%rdi)                 #  69    0x81cc3  2      OPC=movl_m32_r32         
  movl %ecx, -0x4(%rdi,%rdx,1)      #  70    0x81cc5  4      OPC=movl_m32_r32         
  retq                              #  71    0x81cc9  1      OPC=retq                 
.L_81cca:                           #        0x81cca  0      OPC=<label>              
  movq %rcx, (%rdi)                 #  72    0x81cca  3      OPC=movq_m64_r64         
  movq %rcx, -0x8(%rdi,%rdx,1)      #  73    0x81ccd  5      OPC=movq_m64_r64         
  retq                              #  74    0x81cd2  1      OPC=retq                 
  nop                               #  75    0x81cd3  1      OPC=nop                  
  nop                               #  76    0x81cd4  1      OPC=nop                  
  nop                               #  77    0x81cd5  1      OPC=nop                  
  nop                               #  78    0x81cd6  1      OPC=nop                  
  nop                               #  79    0x81cd7  1      OPC=nop                  
  nop                               #  80    0x81cd8  1      OPC=nop                  
  nop                               #  81    0x81cd9  1      OPC=nop                  
  nop                               #  82    0x81cda  1      OPC=nop                  
  nop                               #  83    0x81cdb  1      OPC=nop                  
  nop                               #  84    0x81cdc  1      OPC=nop                  
  nop                               #  85    0x81cdd  1      OPC=nop                  
  nop                               #  86    0x81cde  1      OPC=nop                  
  nop                               #  87    0x81cdf  1      OPC=nop                  
                                                                                      
.size __GI_memset, .-__GI_memset

