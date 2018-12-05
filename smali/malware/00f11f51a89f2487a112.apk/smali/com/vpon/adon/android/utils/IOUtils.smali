.class public final Lcom/vpon/adon/android/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static instance:Lcom/vpon/adon/android/utils/IOUtils;


# instance fields
.field private cookie:Ljava/lang/String;

.field private manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field private params:Lorg/apache/http/params/HttpParams;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vpon/adon/android/utils/IOUtils;->cookie:Ljava/lang/String;

    .line 61
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 62
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x7530

    .line 63
    .local v2, "timeoutConnection":I
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    const/16 v3, 0x7530

    .line 65
    .local v3, "timeoutSocket":I
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 69
    .local v1, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v4, p0, Lcom/vpon/adon/android/utils/IOUtils;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 71
    return-void
.end method

.method public static final declared-synchronized instance()Lcom/vpon/adon/android/utils/IOUtils;
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/vpon/adon/android/utils/IOUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vpon/adon/android/utils/IOUtils;->instance:Lcom/vpon/adon/android/utils/IOUtils;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/vpon/adon/android/utils/IOUtils;

    invoke-direct {v1}, Lcom/vpon/adon/android/utils/IOUtils;-><init>()V

    sput-object v1, Lcom/vpon/adon/android/utils/IOUtils;->instance:Lcom/vpon/adon/android/utils/IOUtils;

    .line 78
    :cond_0
    sget-object v1, Lcom/vpon/adon/android/utils/IOUtils;->instance:Lcom/vpon/adon/android/utils/IOUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public connectHttpServer(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v4, p0, Lcom/vpon/adon/android/utils/IOUtils;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v5, p0, Lcom/vpon/adon/android/utils/IOUtils;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 84
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 88
    .local v3, "resp":Lorg/apache/http/HttpResponse;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v0, "bis":Ljava/io/BufferedInputStream;
    iget-object v4, p0, Lcom/vpon/adon/android/utils/IOUtils;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    .line 91
    return-object v0
.end method

.method public connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 18
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "sdkVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;,
            Lcom/vpon/adon/android/exception/ServiceUnavailableException;,
            Ljava/net/URISyntaxException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    const-string v4, "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"

    .line 132
    .local v4, "cliPri":Ljava/lang/String;
    const-string v14, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    invoke-static {v14, v4}, Lcom/vpon/adon/android/utils/CryptUtils;->decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v12, "O4+gWecUjeNBCuwRbLprfpbXPUGl3A/Ac8HJxnr8A85UqiTMIJ50RxEkEp/urCSUrkICRuVt0JVss0komwdQQBz94D5XSKE3zlWSMplh+Al5BR99slEzLIZU7TJ7Upk/ZmZlY3UpXmRMX+zLEqybApfAlLEr67QoJBdbEpjHsnWxx5nZwHAdeYXwtgSFVGgtydkZBR+PGEjriyWhWkSTgFbO8yJTMxirdEtldU+604SemOFub2WqVHC86lrN+pnvfO9pfs+d99QgMno8MRVEX0EqTnf+qiVIJrCOJbv0cj7SWws7LTgWrGssmur08FEyY0mPCqUqY0/AEkTnwg4PkiOwny3y3hPVvRipMDxBUiTeOIC9U8UVGPD/T5bX+Qrrb2CV6DkfucIU0Ie5q8iC8KCVI6Uh4wu0SDavbqaZH5Dhtb2zLnmOF4qwBF8We4gkRJ63bosreSm1uGn3UoC2CRvOJTyyf8CcCijLnEm0V7Ob4GXFCJlnPKVMsJxbnlQV+ik9IKny/BGkE5j6Gqq1HQ=="

    .line 135
    .local v12, "srvPub":Ljava/lang/String;
    const-string v14, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    invoke-static {v14, v12}, Lcom/vpon/adon/android/utils/CryptUtils;->decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 136
    invoke-static {v12}, Lcom/vpon/adon/android/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v14

    invoke-static {v14}, Lcom/vpon/adon/android/utils/CryptUtils;->getRsaPubKey([B)Ljava/security/PublicKey;

    move-result-object v14

    invoke-static {v14}, Lcom/vpon/adon/android/utils/CryptUtils;->getRsaEncryptCipher(Ljava/security/PublicKey;)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 139
    .local v11, "rsaEncryptCipher":Ljavax/crypto/Cipher;
    const-string v14, "UTF-8"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 140
    .local v3, "bJson":[B
    invoke-static {v3, v11}, Lcom/vpon/adon/android/utils/CryptUtils;->encryptData([BLjavax/crypto/Cipher;)[B

    move-result-object v5

    .line 141
    .local v5, "encBJson":[B
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/vpon/adon/android/utils/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance v13, Ljava/net/URI;

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 144
    .local v13, "uri":Ljava/net/URI;
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/utils/IOUtils;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/utils/IOUtils;->params:Lorg/apache/http/params/HttpParams;

    move-object v15, v0

    invoke-direct {v7, v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 146
    .local v7, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 147
    .local v8, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v14, Lorg/apache/http/message/BasicHeader;

    const-string v15, "Content-Type"

    const-string v16, "application/x-www-form-urlencoded"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    .line 149
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 150
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "data"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v15, "UTF-8"

    invoke-direct {v14, v9, v15}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    const-string v14, "X-ADON-SDK_NAME"

    const-string v15, "Android"

    invoke-virtual {v8, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v14, "X-ADON-SDK_VERSION"

    move-object v0, v8

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/utils/IOUtils;->cookie:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 160
    const-string v14, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vpon/adon/android/utils/IOUtils;->cookie:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v8, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 164
    .local v10, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_1

    .line 166
    const-string v14, "getStatusCode"

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v14, Lcom/vpon/adon/android/exception/ServiceUnavailableException;

    const-string v15, "getStatusCode() != HttpStatus.SC_OK"

    invoke-direct {v14, v15}, Lcom/vpon/adon/android/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 170
    :cond_1
    const-string v14, "Set-Cookie"

    invoke-interface {v10, v14}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v14

    array-length v15, v14

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_2

    .line 174
    return-object v10

    .line 170
    :cond_2
    aget-object v6, v14, v16

    .line 171
    .local v6, "header":Lorg/apache/http/Header;
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vpon/adon/android/utils/IOUtils;->cookie:Ljava/lang/String;

    .line 170
    add-int/lit8 v16, v16, 0x1

    goto :goto_0
.end method

.method public downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v5, p0, Lcom/vpon/adon/android/utils/IOUtils;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v6, p0, Lcom/vpon/adon/android/utils/IOUtils;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 98
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 101
    .local v4, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 102
    const-string v5, "resp.getStatusLine().getStatusCode()"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v5, Lcom/vpon/adon/android/exception/ServiceUnavailableException;

    const-string v6, "getStatusCode() != HttpStatus.SC_OK"

    invoke-direct {v5, v6}, Lcom/vpon/adon/android/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 107
    .local v0, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 109
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 110
    return-object v1
.end method

.method public getRedirectPackCryptoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "adRedirectPackString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v3, "O4+gWecUjeNBCuwRbLprfpbXPUGl3A/Ac8HJxnr8A85UqiTMIJ50RxEkEp/urCSUrkICRuVt0JVss0komwdQQBz94D5XSKE3zlWSMplh+Al5BR99slEzLIZU7TJ7Upk/ZmZlY3UpXmRMX+zLEqybApfAlLEr67QoJBdbEpjHsnWxx5nZwHAdeYXwtgSFVGgtydkZBR+PGEjriyWhWkSTgFbO8yJTMxirdEtldU+604SemOFub2WqVHC86lrN+pnvfO9pfs+d99QgMno8MRVEX0EqTnf+qiVIJrCOJbv0cj7SWws7LTgWrGssmur08FEyY0mPCqUqY0/AEkTnwg4PkiOwny3y3hPVvRipMDxBUiTeOIC9U8UVGPD/T5bX+Qrrb2CV6DkfucIU0Ie5q8iC8KCVI6Uh4wu0SDavbqaZH5Dhtb2zLnmOF4qwBF8We4gkRJ63bosreSm1uGn3UoC2CRvOJTyyf8CcCijLnEm0V7Ob4GXFCJlnPKVMsJxbnlQV+ik9IKny/BGkE5j6Gqq1HQ=="

    .line 117
    .local v3, "srvPub":Ljava/lang/String;
    const-string v4, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    invoke-static {v4, v3}, Lcom/vpon/adon/android/utils/CryptUtils;->decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/vpon/adon/android/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CryptUtils;->getRsaPubKey([B)Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lcom/vpon/adon/android/utils/CryptUtils;->getRsaEncryptCipher(Ljava/security/PublicKey;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 120
    .local v2, "encryptCipher":Ljavax/crypto/Cipher;
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 121
    .local v0, "adRedirectPackByteArray":[B
    invoke-static {v0, v2}, Lcom/vpon/adon/android/utils/CryptUtils;->encryptData([BLjavax/crypto/Cipher;)[B

    move-result-object v1

    .line 122
    .local v1, "encAdRedirectPack":[B
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/vpon/adon/android/utils/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    return-object p1
.end method
