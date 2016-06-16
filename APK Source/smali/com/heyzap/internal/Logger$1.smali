.class final Lcom/heyzap/internal/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/Logger;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/heyzap/internal/Logger$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 18
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "com.example.android.snake"

    iget-object v1, p0, Lcom/heyzap/internal/Logger$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->packageIsInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
