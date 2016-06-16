.class public Lcom/heyzap/internal/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 92
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    move-object v0, v3

    .line 139
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 99
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 101
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 102
    const-string v0, "wifi"

    goto :goto_0

    .line 103
    :cond_1
    if-nez v1, :cond_2

    .line 104
    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 136
    goto :goto_0

    .line 106
    :pswitch_0
    const-string v0, "rtt"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v0, "cdma"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "edge"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v0, "evdo"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "gprs"

    goto :goto_0

    .line 117
    :pswitch_5
    const-string v0, "hsdpa"

    goto :goto_0

    .line 119
    :pswitch_6
    const-string v0, "hspa"

    goto :goto_0

    .line 121
    :pswitch_7
    const-string v0, "hsupa"

    goto :goto_0

    .line 123
    :pswitch_8
    const-string v0, "umts"

    goto :goto_0

    .line 125
    :pswitch_9
    const-string v0, "ehrpd"

    goto :goto_0

    .line 127
    :pswitch_a
    const-string v0, "evdo_b"

    goto :goto_0

    .line 129
    :pswitch_b
    const-string v0, "hspap"

    goto :goto_0

    .line 131
    :pswitch_c
    const-string v0, "iden"

    goto :goto_0

    .line 133
    :pswitch_d
    const-string v0, "lte"

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 139
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 24
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 25
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectedFast(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 34
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 35
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v1, v0}, Lcom/heyzap/internal/Connectivity;->isConnectionFast(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectionFast(II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    if-ne p0, v0, :cond_0

    .line 86
    :goto_0
    :pswitch_0
    return v0

    .line 48
    :cond_0
    if-nez p0, :cond_1

    .line 49
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 83
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 51
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 53
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 55
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 61
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 75
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
