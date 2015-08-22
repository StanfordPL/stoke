  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x132420
#! rip-offset  0xf2420
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv:                  #        0xf2420  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2420  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2421  2      OPC=movl_r32_r32    
  leal 0xc(%rbx), %edi                                               #  3     0xf2423  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2426  1      OPC=nop             
  nop                                                                #  5     0xf2427  1      OPC=nop             
  nop                                                                #  6     0xf2428  1      OPC=nop             
  nop                                                                #  7     0xf2429  1      OPC=nop             
  nop                                                                #  8     0xf242a  1      OPC=nop             
  nop                                                                #  9     0xf242b  1      OPC=nop             
  nop                                                                #  10    0xf242c  1      OPC=nop             
  nop                                                                #  11    0xf242d  1      OPC=nop             
  nop                                                                #  12    0xf242e  1      OPC=nop             
  nop                                                                #  13    0xf242f  1      OPC=nop             
  nop                                                                #  14    0xf2430  1      OPC=nop             
  nop                                                                #  15    0xf2431  1      OPC=nop             
  nop                                                                #  16    0xf2432  1      OPC=nop             
  nop                                                                #  17    0xf2433  1      OPC=nop             
  nop                                                                #  18    0xf2434  1      OPC=nop             
  nop                                                                #  19    0xf2435  1      OPC=nop             
  nop                                                                #  20    0xf2436  1      OPC=nop             
  nop                                                                #  21    0xf2437  1      OPC=nop             
  nop                                                                #  22    0xf2438  1      OPC=nop             
  nop                                                                #  23    0xf2439  1      OPC=nop             
  nop                                                                #  24    0xf243a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf243b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2440  2      OPC=testl_r32_r32   
  je .L_f2460                                                        #  27    0xf2442  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2444  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2445  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2447  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf244e  1      OPC=nop             
  nop                                                                #  32    0xf244f  1      OPC=nop             
  nop                                                                #  33    0xf2450  1      OPC=nop             
  nop                                                                #  34    0xf2451  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2452  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2455  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2458  1      OPC=nop             
  nop                                                                #  38    0xf2459  1      OPC=nop             
  nop                                                                #  39    0xf245a  1      OPC=nop             
  nop                                                                #  40    0xf245b  1      OPC=nop             
  nop                                                                #  41    0xf245c  1      OPC=nop             
  nop                                                                #  42    0xf245d  1      OPC=nop             
  nop                                                                #  43    0xf245e  1      OPC=nop             
  nop                                                                #  44    0xf245f  1      OPC=nop             
  nop                                                                #  45    0xf2460  1      OPC=nop             
  nop                                                                #  46    0xf2461  1      OPC=nop             
  nop                                                                #  47    0xf2462  1      OPC=nop             
  nop                                                                #  48    0xf2463  1      OPC=nop             
  nop                                                                #  49    0xf2464  1      OPC=nop             
  nop                                                                #  50    0xf2465  1      OPC=nop             
  nop                                                                #  51    0xf2466  1      OPC=nop             
.L_f2460:                                                            #        0xf2467  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf2467  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf2469  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf246d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf2470  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf2472  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf2476  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf2478  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf247a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf247f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2480  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2483  1      OPC=nop             
  nop                                                                #  63    0xf2484  1      OPC=nop             
  nop                                                                #  64    0xf2485  1      OPC=nop             
  nop                                                                #  65    0xf2486  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf2487  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf248c  1      OPC=nop             
  nop                                                                #  68    0xf248d  1      OPC=nop             
  nop                                                                #  69    0xf248e  1      OPC=nop             
  nop                                                                #  70    0xf248f  1      OPC=nop             
  nop                                                                #  71    0xf2490  1      OPC=nop             
  nop                                                                #  72    0xf2491  1      OPC=nop             
  nop                                                                #  73    0xf2492  1      OPC=nop             
  nop                                                                #  74    0xf2493  1      OPC=nop             
  nop                                                                #  75    0xf2494  1      OPC=nop             
  nop                                                                #  76    0xf2495  1      OPC=nop             
  nop                                                                #  77    0xf2496  1      OPC=nop             
  nop                                                                #  78    0xf2497  1      OPC=nop             
  nop                                                                #  79    0xf2498  1      OPC=nop             
  nop                                                                #  80    0xf2499  1      OPC=nop             
  nop                                                                #  81    0xf249a  1      OPC=nop             
  nop                                                                #  82    0xf249b  1      OPC=nop             
  nop                                                                #  83    0xf249c  1      OPC=nop             
  nop                                                                #  84    0xf249d  1      OPC=nop             
  nop                                                                #  85    0xf249e  1      OPC=nop             
  nop                                                                #  86    0xf249f  1      OPC=nop             
  nop                                                                #  87    0xf24a0  1      OPC=nop             
  nop                                                                #  88    0xf24a1  1      OPC=nop             
  nop                                                                #  89    0xf24a2  1      OPC=nop             
  nop                                                                #  90    0xf24a3  1      OPC=nop             
  nop                                                                #  91    0xf24a4  1      OPC=nop             
  nop                                                                #  92    0xf24a5  1      OPC=nop             
  nop                                                                #  93    0xf24a6  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv

