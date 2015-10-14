.class public Lcom/heyzap/http/MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 25
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 32
    new-instance v0, Lcom/heyzap/http/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/heyzap/http/MySSLSocketFactory$1;-><init>(Lcom/heyzap/http/MySSLSocketFactory;)V

    .line 49
    iget-object v1, p0, Lcom/heyzap/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 50
    return-void
.end method

.method public static getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 76
    :try_start_0
    new-instance v0, Lcom/heyzap/http/MySSLSocketFactory;

    invoke-static {}, Lcom/heyzap/http/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/heyzap/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 77
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 80
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 65
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :goto_1
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/heyzap/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/heyzap/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
