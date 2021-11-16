
### 1. 编译

本demo是使用的开源项目faac（[源码下载地址](http://faac.sourceforge.net/)）将PCM数据编码成aac音频文件。由于库文件是在x86_64架构的主机上面编译的，所以仅支持该环境的编译运行，其他CPU架构的可以去访问上面的链接去下载编译。

```bash
$ make
```

### 2. 使用

```bash
$ ./pcm2aac -h
$ ./pcm2aac --help
$ ./pcm2aac -i ./audio/test_8000_16_1.pcm -r 8000 -b 16 -c 1 -o out_8khz_1ch.aac
$ ./pcm2aac --input_pcmfile=./audio/test_44100_16_2.pcm --sample_rate=44100 --sample_bits=16 --channels=2 --output_aacfile=out_44.1khz_2ch.aac
```

### 3. 参考文章

【格式说明】

- [AAC文件格式解析\_cloud 的学习时代-CSDN博客\_aac](https://blog.csdn.net/u013427969/article/details/53091594) 

- [从零开始写一个RTSP服务器（5）RTP传输AAC\_JT同学的博客-CSDN博客](https://blog.csdn.net/weixin_42462202/article/details/99200935) 

- [音频编码格式介绍-AAC - 简书](https://www.jianshu.com/p/515cb88fbc75) 

【编码实现】

- [音频压缩：FAAC编码实例(wav)\_铸剑娃的专栏-CSDN博客](https://blog.csdn.net/ssdsafsdsd/article/details/17758361) 

- [使用FAAC转换PCM为AAC\_Arbboter的专栏-CSDN博客](https://blog.csdn.net/arbboter/article/details/43152967) 


### 附录（demo目录架构）

```
.
├── audio
│   ├── out_44.1khz_2ch.aac
│   ├── out_8khz_1ch.aac
│   ├── test_44100_16_2.pcm
│   └── test_8000_16_1.pcm
├── docs
│   ├── AAC文件格式解析_cloud 的学习时代-CSDN博客_aac.mhtml
│   ├── 从零开始写一个RTSP服务器（5）RTP传输AAC_JT同学的博客-CSDN博客.mhtml
│   ├── 使用FAAC转换PCM为AAC_Arbboter的专栏-CSDN博客.mhtml
│   ├── 音频压缩：FAAC编码实例_铸剑娃的专栏-CSDN博客.mhtml
│   └── 音频编码格式介绍-AAC - 简书.mhtml
├── include
│   ├── faaccfg.h
│   └── faac.h
├── lib
│   └── libfaac.a
├── main.c
├── Makefile
└── README.md
```
