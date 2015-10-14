.class public abstract Lcom/heyzap/http/FileAsyncHttpResponseHandler;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpResponseHandler"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    .line 28
    sget-boolean v0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 30
    return-void
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 109
    if-eqz p1, :cond_1

    .line 110
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 111
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 112
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    if-eqz v1, :cond_1

    .line 115
    const/16 v5, 0x1000

    :try_start_0
    new-array v5, v5, [B

    .line 118
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_0

    .line 119
    add-int/2addr v6, v7

    .line 120
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 121
    long-to-int v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->sendProgressMessage(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v2

    instance-of v3, v1, Lorg/apache/http/conn/EofSensorInputStream;

    if-eqz v3, :cond_3

    .line 125
    check-cast v1, Lorg/apache/http/conn/EofSensorInputStream;

    invoke-virtual {v1}, Lorg/apache/http/conn/EofSensorInputStream;->abortConnection()V

    .line 129
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v2

    .line 124
    :cond_0
    instance-of v2, v1, Lorg/apache/http/conn/EofSensorInputStream;

    if-eqz v2, :cond_2

    .line 125
    move-object v0, v1

    check-cast v0, Lorg/apache/http/conn/EofSensorInputStream;

    move-object p0, v0

    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStream;->abortConnection()V

    .line 129
    :goto_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 134
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1
.end method

.method protected getTargetFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 58
    sget-boolean v0, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    :try_start_0
    const-string v0, "temp_"

    const-string v1, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "FileAsyncHttpResponseHandler"

    const-string v2, "Cannot create temporary file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 80
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/heyzap/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 96
    return-void
.end method
