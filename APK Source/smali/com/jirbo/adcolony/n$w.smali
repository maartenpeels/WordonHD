.class Lcom/jirbo/adcolony/n$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "w"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->a:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->b:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->c:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string v4, "update"

    const-string v3, "session_start"

    const-string v2, "install"

    .line 294
    if-nez p1, :cond_0

    move v0, v1

    .line 305
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v0, "update"

    invoke-virtual {p1, v4}, Lcom/jirbo/adcolony/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "install"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 298
    :cond_2
    const-string v0, "session_start"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$w;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/n$w;->d:Ljava/util/HashMap;

    const-string v1, "update"

    iget-object v1, p0, Lcom/jirbo/adcolony/n$w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/jirbo/adcolony/n$w;->d:Ljava/util/HashMap;

    const-string v1, "install"

    iget-object v1, p0, Lcom/jirbo/adcolony/n$w;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/jirbo/adcolony/n$w;->d:Ljava/util/HashMap;

    const-string v1, "session_start"

    iget-object v1, p0, Lcom/jirbo/adcolony/n$w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method
