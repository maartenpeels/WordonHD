.class public Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# instance fields
.field public fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

.field private localStatus:I

.field private name:Ljava/lang/String;

.field private networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

.field private remoteStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getFetchRequestStore()Lcom/heyzap/mediation/FetchRequestStore;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->fetchRequestStore:Lcom/heyzap/mediation/FetchRequestStore;

    return-object v0
.end method

.method public getLocalStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    return v0
.end method

.method public getLocalTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 45
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 47
    iget v1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    const-string v1, "No SDK Detected"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v1, "SDK Detected"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkAdapter()Lcom/heyzap/mediation/abstr/NetworkAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    return-object v0
.end method

.method public getNetworkStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteStatus()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    return v0
.end method

.method public getRemoteTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, -0x777778

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v6, -0x10000

    const v5, -0xff0100

    const/4 v4, 0x1

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 67
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 70
    iget v3, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    packed-switch v3, :pswitch_data_0

    .line 99
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    return-object v0

    .line 72
    :pswitch_0
    const-string v3, "No Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const-string v3, "Network Not Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v3, "Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    const-string v3, "Network Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 83
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v3, "Credentials Found"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    const-string v3, "Network Not Enabled"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 93
    :pswitch_3
    const-string v3, "Network Error"

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    .line 95
    const-string v3, "Network Error"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setBackgroundColor(I)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setNetworkAdapter(Lcom/heyzap/mediation/abstr/NetworkAdapter;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->networkAdapter:Lcom/heyzap/mediation/abstr/NetworkAdapter;

    .line 115
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->localStatus:I

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRemoteStatus(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/heyzap/sdk/mediation/testactivity/NetworkStatus;->remoteStatus:I

    .line 41
    return-void
.end method
