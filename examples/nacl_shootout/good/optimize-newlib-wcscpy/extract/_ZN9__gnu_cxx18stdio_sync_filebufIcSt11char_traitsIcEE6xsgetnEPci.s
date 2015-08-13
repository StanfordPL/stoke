  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, @function

#! file-offset 0xdb7a0
#! rip-offset  0x9b7a0
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci:  #        0x9b7a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                             #  1     0x9b7a0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                    #  2     0x9b7a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                              #  3     0x9b7a7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                   #  4     0x9b7ac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  5     0x9b7af  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  6     0x9b7b2  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %ecx                                       #  7     0x9b7b4  5      OPC=movl_r32_m32    
  movl %esi, %r12d                                                   #  8     0x9b7b9  3      OPC=movl_r32_r32    
  movl %r12d, %edi                                                   #  9     0x9b7bc  3      OPC=movl_r32_r32    
  nop                                                                #  10    0x9b7bf  1      OPC=nop             
  movl $0x1, %esi                                                    #  11    0x9b7c0  5      OPC=movl_r32_imm32  
  nop                                                                #  12    0x9b7c5  1      OPC=nop             
  nop                                                                #  13    0x9b7c6  1      OPC=nop             
  nop                                                                #  14    0x9b7c7  1      OPC=nop             
  nop                                                                #  15    0x9b7c8  1      OPC=nop             
  nop                                                                #  16    0x9b7c9  1      OPC=nop             
  nop                                                                #  17    0x9b7ca  1      OPC=nop             
  nop                                                                #  18    0x9b7cb  1      OPC=nop             
  nop                                                                #  19    0x9b7cc  1      OPC=nop             
  nop                                                                #  20    0x9b7cd  1      OPC=nop             
  nop                                                                #  21    0x9b7ce  1      OPC=nop             
  nop                                                                #  22    0x9b7cf  1      OPC=nop             
  nop                                                                #  23    0x9b7d0  1      OPC=nop             
  nop                                                                #  24    0x9b7d1  1      OPC=nop             
  nop                                                                #  25    0x9b7d2  1      OPC=nop             
  nop                                                                #  26    0x9b7d3  1      OPC=nop             
  nop                                                                #  27    0x9b7d4  1      OPC=nop             
  nop                                                                #  28    0x9b7d5  1      OPC=nop             
  nop                                                                #  29    0x9b7d6  1      OPC=nop             
  nop                                                                #  30    0x9b7d7  1      OPC=nop             
  nop                                                                #  31    0x9b7d8  1      OPC=nop             
  nop                                                                #  32    0x9b7d9  1      OPC=nop             
  nop                                                                #  33    0x9b7da  1      OPC=nop             
  callq .fread                                                       #  34    0x9b7db  5      OPC=callq_label     
  testl %eax, %eax                                                   #  35    0x9b7e0  2      OPC=testl_r32_r32   
  jle .L_9b820                                                       #  36    0x9b7e2  2      OPC=jle_label       
  leal -0x1(%rax,%r12,1), %r12d                                      #  37    0x9b7e4  5      OPC=leal_r32_m16    
  movl %r12d, %r12d                                                  #  38    0x9b7e9  3      OPC=movl_r32_r32    
  movzbl (%r15,%r12,1), %edx                                         #  39    0x9b7ec  5      OPC=movzbl_r32_m8   
  movl %ebx, %ebx                                                    #  40    0x9b7f1  2      OPC=movl_r32_r32    
  movl %edx, 0x24(%r15,%rbx,1)                                       #  41    0x9b7f3  5      OPC=movl_m32_r32    
  nop                                                                #  42    0x9b7f8  1      OPC=nop             
  nop                                                                #  43    0x9b7f9  1      OPC=nop             
  nop                                                                #  44    0x9b7fa  1      OPC=nop             
  nop                                                                #  45    0x9b7fb  1      OPC=nop             
  nop                                                                #  46    0x9b7fc  1      OPC=nop             
  nop                                                                #  47    0x9b7fd  1      OPC=nop             
  nop                                                                #  48    0x9b7fe  1      OPC=nop             
  nop                                                                #  49    0x9b7ff  1      OPC=nop             
.L_9b800:                                                            #        0x9b800  0      OPC=<label>         
  movq 0x8(%rsp), %rbx                                               #  50    0x9b800  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                              #  51    0x9b805  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                   #  52    0x9b80a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  53    0x9b80d  3      OPC=addq_r64_r64    
  popq %r11                                                          #  54    0x9b810  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  55    0x9b812  7      OPC=andl_r32_imm32  
  nop                                                                #  56    0x9b819  1      OPC=nop             
  nop                                                                #  57    0x9b81a  1      OPC=nop             
  nop                                                                #  58    0x9b81b  1      OPC=nop             
  nop                                                                #  59    0x9b81c  1      OPC=nop             
  addq %r15, %r11                                                    #  60    0x9b81d  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  61    0x9b820  3      OPC=jmpq_r64        
  nop                                                                #  62    0x9b823  1      OPC=nop             
  nop                                                                #  63    0x9b824  1      OPC=nop             
  nop                                                                #  64    0x9b825  1      OPC=nop             
  nop                                                                #  65    0x9b826  1      OPC=nop             
.L_9b820:                                                            #        0x9b827  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  66    0x9b827  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                #  67    0x9b829  9      OPC=movl_m32_imm32  
  jmpq .L_9b800                                                      #  68    0x9b832  2      OPC=jmpq_label      
  nop                                                                #  69    0x9b834  1      OPC=nop             
  nop                                                                #  70    0x9b835  1      OPC=nop             
  nop                                                                #  71    0x9b836  1      OPC=nop             
  nop                                                                #  72    0x9b837  1      OPC=nop             
  nop                                                                #  73    0x9b838  1      OPC=nop             
  nop                                                                #  74    0x9b839  1      OPC=nop             
  nop                                                                #  75    0x9b83a  1      OPC=nop             
  nop                                                                #  76    0x9b83b  1      OPC=nop             
  nop                                                                #  77    0x9b83c  1      OPC=nop             
  nop                                                                #  78    0x9b83d  1      OPC=nop             
  nop                                                                #  79    0x9b83e  1      OPC=nop             
  nop                                                                #  80    0x9b83f  1      OPC=nop             
  nop                                                                #  81    0x9b840  1      OPC=nop             
  nop                                                                #  82    0x9b841  1      OPC=nop             
  nop                                                                #  83    0x9b842  1      OPC=nop             
  nop                                                                #  84    0x9b843  1      OPC=nop             
  nop                                                                #  85    0x9b844  1      OPC=nop             
  nop                                                                #  86    0x9b845  1      OPC=nop             
  nop                                                                #  87    0x9b846  1      OPC=nop             
                                                                                                                  
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsgetnEPci

