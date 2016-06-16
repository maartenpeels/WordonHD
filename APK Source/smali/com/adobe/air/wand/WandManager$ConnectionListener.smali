.class Lcom/adobe/air/wand/WandManager$ConnectionListener;
.super Ljava/lang/Object;
.source "WandManager.java"

# interfaces
.implements Lcom/adobe/air/wand/connection/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/WandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/WandManager;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/WandManager;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/WandManager$ConnectionListener;-><init>(Lcom/adobe/air/wand/WandManager;)V

    return-void
.end method


# virtual methods
.method public onConnectError()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onConnectSuccess()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onConnectionClose()V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    # invokes: Lcom/adobe/air/wand/WandManager;->loadDefaultView()V
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$100(Lcom/adobe/air/wand/WandManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConnectionOpen(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    # getter for: Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->LANDSCAPE:Lcom/adobe/air/wand/view/WandView$ScreenOrientation;

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V

    .line 66
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    # getter for: Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->loadCompanionView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDisconnectError()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onDisconnectSuccess()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    # getter for: Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$200(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/TaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteMessage(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public updateConnectionToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ConnectionListener;->this$0:Lcom/adobe/air/wand/WandManager;

    # getter for: Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;
    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/view/WandView;->updateConnectionToken(Ljava/lang/String;)V

    .line 140
    return-void
.end method
