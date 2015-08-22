  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x14f400
#! rip-offset  0x10f400
#! capacity    128 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_info_table_bases:  #        0x10f400  0      OPC=<label>         
  movl %esi, %esi                    #  1     0x10f400  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  2     0x10f402  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x10f404  9      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  4     0x10f40d  2      OPC=movl_r32_r32    
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x10f40f  6      OPC=movb_m8_imm8    
  popq %r11                          #  6     0x10f415  2      OPC=popq_r64_1      
  nop                                #  7     0x10f417  1      OPC=nop             
  nop                                #  8     0x10f418  1      OPC=nop             
  nop                                #  9     0x10f419  1      OPC=nop             
  nop                                #  10    0x10f41a  1      OPC=nop             
  nop                                #  11    0x10f41b  1      OPC=nop             
  nop                                #  12    0x10f41c  1      OPC=nop             
  nop                                #  13    0x10f41d  1      OPC=nop             
  nop                                #  14    0x10f41e  1      OPC=nop             
  nop                                #  15    0x10f41f  1      OPC=nop             
  movl %esi, %esi                    #  16    0x10f420  2      OPC=movl_r32_r32    
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  17    0x10f422  8      OPC=orw_m16_imm16   
  movl %esi, %esi                    #  18    0x10f42a  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)        #  19    0x10f42c  5      OPC=movl_m32_r32    
  movl 0xff696e1(%rip), %eax         #  20    0x10f431  6      OPC=movl_r32_m32    
  nop                                #  21    0x10f437  1      OPC=nop             
  nop                                #  22    0x10f438  1      OPC=nop             
  nop                                #  23    0x10f439  1      OPC=nop             
  nop                                #  24    0x10f43a  1      OPC=nop             
  nop                                #  25    0x10f43b  1      OPC=nop             
  nop                                #  26    0x10f43c  1      OPC=nop             
  nop                                #  27    0x10f43d  1      OPC=nop             
  nop                                #  28    0x10f43e  1      OPC=nop             
  nop                                #  29    0x10f43f  1      OPC=nop             
  movl %esi, %esi                    #  30    0x10f440  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)    #  31    0x10f442  8      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  32    0x10f44a  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)        #  33    0x10f44c  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  34    0x10f451  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)        #  35    0x10f453  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  36    0x10f458  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)       #  37    0x10f45a  5      OPC=movl_m32_r32    
  nop                                #  38    0x10f45f  1      OPC=nop             
  movl %esi, 0xff696b2(%rip)         #  39    0x10f460  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d            #  40    0x10f466  7      OPC=andl_r32_imm32  
  nop                                #  41    0x10f46d  1      OPC=nop             
  nop                                #  42    0x10f46e  1      OPC=nop             
  nop                                #  43    0x10f46f  1      OPC=nop             
  nop                                #  44    0x10f470  1      OPC=nop             
  addq %r15, %r11                    #  45    0x10f471  3      OPC=addq_r64_r64    
  jmpq %r11                          #  46    0x10f474  3      OPC=jmpq_r64        
  nop                                #  47    0x10f477  1      OPC=nop             
  nop                                #  48    0x10f478  1      OPC=nop             
  nop                                #  49    0x10f479  1      OPC=nop             
  nop                                #  50    0x10f47a  1      OPC=nop             
  nop                                #  51    0x10f47b  1      OPC=nop             
  nop                                #  52    0x10f47c  1      OPC=nop             
  nop                                #  53    0x10f47d  1      OPC=nop             
  nop                                #  54    0x10f47e  1      OPC=nop             
  nop                                #  55    0x10f47f  1      OPC=nop             
  nop                                #  56    0x10f480  1      OPC=nop             
  nop                                #  57    0x10f481  1      OPC=nop             
  nop                                #  58    0x10f482  1      OPC=nop             
  nop                                #  59    0x10f483  1      OPC=nop             
  nop                                #  60    0x10f484  1      OPC=nop             
  nop                                #  61    0x10f485  1      OPC=nop             
  nop                                #  62    0x10f486  1      OPC=nop             
                                                                                   
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

