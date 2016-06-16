.class Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# instance fields
.field private stream:Ljava/util/zip/GZIPInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 1009
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1025
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;->stream:Ljava/util/zip/GZIPInputStream;

    if-eqz v0, :cond_0

    .line 1027
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;->stream:Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;->stream:Ljava/util/zip/GZIPInputStream;

    .line 1014
    iget-object v0, p0, Lcom/heyzap/http/AsyncHttpClient$InflatingEntity;->stream:Ljava/util/zip/GZIPInputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 1019
    const-wide/16 v0, -0x1

    return-wide v0
.end method
