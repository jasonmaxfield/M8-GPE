.class Lcom/android/settings/notification/VolumeSeekBarPreference$2;
.super Landroid/preference/SeekBarVolumizer;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference$2;->this$0:Lcom/android/settings/notification/VolumeSeekBarPreference;

    # getter for: Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    return-void
.end method
