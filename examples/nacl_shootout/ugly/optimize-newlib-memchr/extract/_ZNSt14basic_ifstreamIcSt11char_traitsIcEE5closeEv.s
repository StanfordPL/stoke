  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x132520
#! rip-offset  0xf2520
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv:                 #        0xf2520  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf2520  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf2521  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                               #  3     0xf2523  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf2526  1      OPC=nop             
  nop                                                                #  5     0xf2527  1      OPC=nop             
  nop                                                                #  6     0xf2528  1      OPC=nop             
  nop                                                                #  7     0xf2529  1      OPC=nop             
  nop                                                                #  8     0xf252a  1      OPC=nop             
  nop                                                                #  9     0xf252b  1      OPC=nop             
  nop                                                                #  10    0xf252c  1      OPC=nop             
  nop                                                                #  11    0xf252d  1      OPC=nop             
  nop                                                                #  12    0xf252e  1      OPC=nop             
  nop                                                                #  13    0xf252f  1      OPC=nop             
  nop                                                                #  14    0xf2530  1      OPC=nop             
  nop                                                                #  15    0xf2531  1      OPC=nop             
  nop                                                                #  16    0xf2532  1      OPC=nop             
  nop                                                                #  17    0xf2533  1      OPC=nop             
  nop                                                                #  18    0xf2534  1      OPC=nop             
  nop                                                                #  19    0xf2535  1      OPC=nop             
  nop                                                                #  20    0xf2536  1      OPC=nop             
  nop                                                                #  21    0xf2537  1      OPC=nop             
  nop                                                                #  22    0xf2538  1      OPC=nop             
  nop                                                                #  23    0xf2539  1      OPC=nop             
  nop                                                                #  24    0xf253a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf253b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf2540  2      OPC=testl_r32_r32   
  je .L_f2560                                                        #  27    0xf2542  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf2544  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf2545  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf2547  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf254e  1      OPC=nop             
  nop                                                                #  32    0xf254f  1      OPC=nop             
  nop                                                                #  33    0xf2550  1      OPC=nop             
  nop                                                                #  34    0xf2551  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf2552  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf2555  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf2558  1      OPC=nop             
  nop                                                                #  38    0xf2559  1      OPC=nop             
  nop                                                                #  39    0xf255a  1      OPC=nop             
  nop                                                                #  40    0xf255b  1      OPC=nop             
  nop                                                                #  41    0xf255c  1      OPC=nop             
  nop                                                                #  42    0xf255d  1      OPC=nop             
  nop                                                                #  43    0xf255e  1      OPC=nop             
  nop                                                                #  44    0xf255f  1      OPC=nop             
  nop                                                                #  45    0xf2560  1      OPC=nop             
  nop                                                                #  46    0xf2561  1      OPC=nop             
  nop                                                                #  47    0xf2562  1      OPC=nop             
  nop                                                                #  48    0xf2563  1      OPC=nop             
  nop                                                                #  49    0xf2564  1      OPC=nop             
  nop                                                                #  50    0xf2565  1      OPC=nop             
  nop                                                                #  51    0xf2566  1      OPC=nop             
.L_f2560:                                                            #        0xf2567  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf2567  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf2569  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf256d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf2570  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf2572  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf2576  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf2578  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf257a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf257f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf2580  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf2583  1      OPC=nop             
  nop                                                                #  63    0xf2584  1      OPC=nop             
  nop                                                                #  64    0xf2585  1      OPC=nop             
  nop                                                                #  65    0xf2586  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf2587  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf258c  1      OPC=nop             
  nop                                                                #  68    0xf258d  1      OPC=nop             
  nop                                                                #  69    0xf258e  1      OPC=nop             
  nop                                                                #  70    0xf258f  1      OPC=nop             
  nop                                                                #  71    0xf2590  1      OPC=nop             
  nop                                                                #  72    0xf2591  1      OPC=nop             
  nop                                                                #  73    0xf2592  1      OPC=nop             
  nop                                                                #  74    0xf2593  1      OPC=nop             
  nop                                                                #  75    0xf2594  1      OPC=nop             
  nop                                                                #  76    0xf2595  1      OPC=nop             
  nop                                                                #  77    0xf2596  1      OPC=nop             
  nop                                                                #  78    0xf2597  1      OPC=nop             
  nop                                                                #  79    0xf2598  1      OPC=nop             
  nop                                                                #  80    0xf2599  1      OPC=nop             
  nop                                                                #  81    0xf259a  1      OPC=nop             
  nop                                                                #  82    0xf259b  1      OPC=nop             
  nop                                                                #  83    0xf259c  1      OPC=nop             
  nop                                                                #  84    0xf259d  1      OPC=nop             
  nop                                                                #  85    0xf259e  1      OPC=nop             
  nop                                                                #  86    0xf259f  1      OPC=nop             
  nop                                                                #  87    0xf25a0  1      OPC=nop             
  nop                                                                #  88    0xf25a1  1      OPC=nop             
  nop                                                                #  89    0xf25a2  1      OPC=nop             
  nop                                                                #  90    0xf25a3  1      OPC=nop             
  nop                                                                #  91    0xf25a4  1      OPC=nop             
  nop                                                                #  92    0xf25a5  1      OPC=nop             
  nop                                                                #  93    0xf25a6  1      OPC=nop             
                                                                                                                  
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv

