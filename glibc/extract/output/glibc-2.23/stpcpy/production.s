  .text
  .globl __GI___stpcpy
  .type __GI___stpcpy, @function

#! file-offset 0x82220
#! rip-offset  0x82220
#! capacity    224 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.__GI___stpcpy:                  #        0x82220  0      OPC=<label>         
  movq %rsi, %rcx                #  1     0x82220  3      OPC=movq_r64_r64    
  andl $0x7, %ecx                #  2     0x82223  3      OPC=andl_r32_imm8   
  movq %rdi, %rdx                #  3     0x82226  3      OPC=movq_r64_r64    
  je .L_82246                    #  4     0x82229  2      OPC=je_label        
  negl %ecx                      #  5     0x8222b  2      OPC=negl_r32        
  addl $0x8, %ecx                #  6     0x8222d  3      OPC=addl_r32_imm8   
.L_82230:                        #        0x82230  0      OPC=<label>         
  movb (%rsi), %al               #  7     0x82230  2      OPC=movb_r8_m8      
  testb %al, %al                 #  8     0x82232  2      OPC=testb_r8_r8     
  movb %al, (%rdx)               #  9     0x82234  2      OPC=movb_m8_r8      
  je .L_822f8                    #  10    0x82236  6      OPC=je_label_1      
  incq %rsi                      #  11    0x8223c  3      OPC=incq_r64        
  incq %rdx                      #  12    0x8223f  3      OPC=incq_r64        
  decl %ecx                      #  13    0x82242  2      OPC=decl_r32        
  jne .L_82230                   #  14    0x82244  2      OPC=jne_label       
.L_82246:                        #        0x82246  0      OPC=<label>         
  movq $0xfefefefefefefeff, %r8  #  15    0x82246  10     OPC=movq_r64_imm64  
.L_82250:                        #        0x82250  0      OPC=<label>         
  movq (%rsi), %rax              #  16    0x82250  3      OPC=movq_r64_m64    
  addq $0x8, %rsi                #  17    0x82253  4      OPC=addq_r64_imm8   
  movq %rax, %r9                 #  18    0x82257  3      OPC=movq_r64_r64    
  addq %r8, %r9                  #  19    0x8225a  3      OPC=addq_r64_r64    
  jae .L_822e0                   #  20    0x8225d  6      OPC=jae_label_1     
  xorq %rax, %r9                 #  21    0x82263  3      OPC=xorq_r64_r64    
  orq %r8, %r9                   #  22    0x82266  3      OPC=orq_r64_r64     
  incq %r9                       #  23    0x82269  3      OPC=incq_r64        
  jne .L_822e0                   #  24    0x8226c  2      OPC=jne_label       
  movq %rax, (%rdx)              #  25    0x8226e  3      OPC=movq_m64_r64    
  addq $0x8, %rdx                #  26    0x82271  4      OPC=addq_r64_imm8   
  movq (%rsi), %rax              #  27    0x82275  3      OPC=movq_r64_m64    
  addq $0x8, %rsi                #  28    0x82278  4      OPC=addq_r64_imm8   
  movq %rax, %r9                 #  29    0x8227c  3      OPC=movq_r64_r64    
  addq %r8, %r9                  #  30    0x8227f  3      OPC=addq_r64_r64    
  jae .L_822e0                   #  31    0x82282  2      OPC=jae_label       
  xorq %rax, %r9                 #  32    0x82284  3      OPC=xorq_r64_r64    
  orq %r8, %r9                   #  33    0x82287  3      OPC=orq_r64_r64     
  incq %r9                       #  34    0x8228a  3      OPC=incq_r64        
  jne .L_822e0                   #  35    0x8228d  2      OPC=jne_label       
  movq %rax, (%rdx)              #  36    0x8228f  3      OPC=movq_m64_r64    
  addq $0x8, %rdx                #  37    0x82292  4      OPC=addq_r64_imm8   
  movq (%rsi), %rax              #  38    0x82296  3      OPC=movq_r64_m64    
  addq $0x8, %rsi                #  39    0x82299  4      OPC=addq_r64_imm8   
  movq %rax, %r9                 #  40    0x8229d  3      OPC=movq_r64_r64    
  addq %r8, %r9                  #  41    0x822a0  3      OPC=addq_r64_r64    
  jae .L_822e0                   #  42    0x822a3  2      OPC=jae_label       
  xorq %rax, %r9                 #  43    0x822a5  3      OPC=xorq_r64_r64    
  orq %r8, %r9                   #  44    0x822a8  3      OPC=orq_r64_r64     
  incq %r9                       #  45    0x822ab  3      OPC=incq_r64        
  jne .L_822e0                   #  46    0x822ae  2      OPC=jne_label       
  movq %rax, (%rdx)              #  47    0x822b0  3      OPC=movq_m64_r64    
  addq $0x8, %rdx                #  48    0x822b3  4      OPC=addq_r64_imm8   
  movq (%rsi), %rax              #  49    0x822b7  3      OPC=movq_r64_m64    
  addq $0x8, %rsi                #  50    0x822ba  4      OPC=addq_r64_imm8   
  movq %rax, %r9                 #  51    0x822be  3      OPC=movq_r64_r64    
  addq %r8, %r9                  #  52    0x822c1  3      OPC=addq_r64_r64    
  jae .L_822e0                   #  53    0x822c4  2      OPC=jae_label       
  xorq %rax, %r9                 #  54    0x822c6  3      OPC=xorq_r64_r64    
  orq %r8, %r9                   #  55    0x822c9  3      OPC=orq_r64_r64     
  incq %r9                       #  56    0x822cc  3      OPC=incq_r64        
  jne .L_822e0                   #  57    0x822cf  2      OPC=jne_label       
  movq %rax, (%rdx)              #  58    0x822d1  3      OPC=movq_m64_r64    
  addq $0x8, %rdx                #  59    0x822d4  4      OPC=addq_r64_imm8   
  jmpq .L_82250                  #  60    0x822d8  5      OPC=jmpq_label_1    
  nop                            #  61    0x822dd  1      OPC=nop             
  nop                            #  62    0x822de  1      OPC=nop             
  nop                            #  63    0x822df  1      OPC=nop             
.L_822e0:                        #        0x822e0  0      OPC=<label>         
  movb %al, (%rdx)               #  64    0x822e0  2      OPC=movb_m8_r8      
  testb %al, %al                 #  65    0x822e2  2      OPC=testb_r8_r8     
  je .L_822f8                    #  66    0x822e4  2      OPC=je_label        
  incq %rdx                      #  67    0x822e6  3      OPC=incq_r64        
  movb %ah, (%rdx)               #  68    0x822e9  2      OPC=movb_m8_rh      
  testb %ah, %ah                 #  69    0x822eb  2      OPC=testb_rh_rh     
  je .L_822f8                    #  70    0x822ed  2      OPC=je_label        
  incq %rdx                      #  71    0x822ef  3      OPC=incq_r64        
  shrq $0x10, %rax               #  72    0x822f2  4      OPC=shrq_r64_imm8   
  jmpq .L_822e0                  #  73    0x822f6  2      OPC=jmpq_label      
.L_822f8:                        #        0x822f8  0      OPC=<label>         
  movq %rdx, %rax                #  74    0x822f8  3      OPC=movq_r64_r64    
  retq                           #  75    0x822fb  1      OPC=retq            
  nop                            #  76    0x822fc  1      OPC=nop             
  nop                            #  77    0x822fd  1      OPC=nop             
  nop                            #  78    0x822fe  1      OPC=nop             
  nop                            #  79    0x822ff  1      OPC=nop             
                                                                              
.size __GI___stpcpy, .-__GI___stpcpy

