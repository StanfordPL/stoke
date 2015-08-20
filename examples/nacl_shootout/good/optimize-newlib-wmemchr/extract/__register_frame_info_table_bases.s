  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x14ece0
#! rip-offset  0x10ece0
#! capacity    128 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.__register_frame_info_table_bases:  #        0x10ece0  0      OPC=<label>         
  movl %esi, %esi                    #  1     0x10ece0  2      OPC=movl_r32_r32    
  movl %esi, %esi                    #  2     0x10ece2  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x10ece4  9      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  4     0x10eced  2      OPC=movl_r32_r32    
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x10ecef  6      OPC=movb_m8_imm8    
  popq %r11                          #  6     0x10ecf5  2      OPC=popq_r64_1      
  nop                                #  7     0x10ecf7  1      OPC=nop             
  nop                                #  8     0x10ecf8  1      OPC=nop             
  nop                                #  9     0x10ecf9  1      OPC=nop             
  nop                                #  10    0x10ecfa  1      OPC=nop             
  nop                                #  11    0x10ecfb  1      OPC=nop             
  nop                                #  12    0x10ecfc  1      OPC=nop             
  nop                                #  13    0x10ecfd  1      OPC=nop             
  nop                                #  14    0x10ecfe  1      OPC=nop             
  nop                                #  15    0x10ecff  1      OPC=nop             
  movl %esi, %esi                    #  16    0x10ed00  2      OPC=movl_r32_r32    
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  17    0x10ed02  8      OPC=orw_m16_imm16   
  movl %esi, %esi                    #  18    0x10ed0a  2      OPC=movl_r32_r32    
  movl %edi, 0xc(%r15,%rsi,1)        #  19    0x10ed0c  5      OPC=movl_m32_r32    
  movl 0xff69e01(%rip), %eax         #  20    0x10ed11  6      OPC=movl_r32_m32    
  nop                                #  21    0x10ed17  1      OPC=nop             
  nop                                #  22    0x10ed18  1      OPC=nop             
  nop                                #  23    0x10ed19  1      OPC=nop             
  nop                                #  24    0x10ed1a  1      OPC=nop             
  nop                                #  25    0x10ed1b  1      OPC=nop             
  nop                                #  26    0x10ed1c  1      OPC=nop             
  nop                                #  27    0x10ed1d  1      OPC=nop             
  nop                                #  28    0x10ed1e  1      OPC=nop             
  nop                                #  29    0x10ed1f  1      OPC=nop             
  movl %esi, %esi                    #  30    0x10ed20  2      OPC=movl_r32_r32    
  movl $0xffffffff, (%r15,%rsi,1)    #  31    0x10ed22  8      OPC=movl_m32_imm32  
  movl %esi, %esi                    #  32    0x10ed2a  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)        #  33    0x10ed2c  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  34    0x10ed31  2      OPC=movl_r32_r32    
  movl %ecx, 0x8(%r15,%rsi,1)        #  35    0x10ed33  5      OPC=movl_m32_r32    
  movl %esi, %esi                    #  36    0x10ed38  2      OPC=movl_r32_r32    
  movl %eax, 0x14(%r15,%rsi,1)       #  37    0x10ed3a  5      OPC=movl_m32_r32    
  nop                                #  38    0x10ed3f  1      OPC=nop             
  movl %esi, 0xff69dd2(%rip)         #  39    0x10ed40  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d            #  40    0x10ed46  7      OPC=andl_r32_imm32  
  nop                                #  41    0x10ed4d  1      OPC=nop             
  nop                                #  42    0x10ed4e  1      OPC=nop             
  nop                                #  43    0x10ed4f  1      OPC=nop             
  nop                                #  44    0x10ed50  1      OPC=nop             
  addq %r15, %r11                    #  45    0x10ed51  3      OPC=addq_r64_r64    
  jmpq %r11                          #  46    0x10ed54  3      OPC=jmpq_r64        
  nop                                #  47    0x10ed57  1      OPC=nop             
  nop                                #  48    0x10ed58  1      OPC=nop             
  nop                                #  49    0x10ed59  1      OPC=nop             
  nop                                #  50    0x10ed5a  1      OPC=nop             
  nop                                #  51    0x10ed5b  1      OPC=nop             
  nop                                #  52    0x10ed5c  1      OPC=nop             
  nop                                #  53    0x10ed5d  1      OPC=nop             
  nop                                #  54    0x10ed5e  1      OPC=nop             
  nop                                #  55    0x10ed5f  1      OPC=nop             
  nop                                #  56    0x10ed60  1      OPC=nop             
  nop                                #  57    0x10ed61  1      OPC=nop             
  nop                                #  58    0x10ed62  1      OPC=nop             
  nop                                #  59    0x10ed63  1      OPC=nop             
  nop                                #  60    0x10ed64  1      OPC=nop             
  nop                                #  61    0x10ed65  1      OPC=nop             
  nop                                #  62    0x10ed66  1      OPC=nop             
                                                                                   
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

