.class public Lcom/heyzap/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/heyzap/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 554
    iput-object p2, p0, Lcom/heyzap/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 555
    iput-object p3, p0, Lcom/heyzap/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 556
    return-void
.end method
