<!-- Page -->
<div class="page">
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-lg-3">
                <!-- Page Widget -->
                <div class="card card-shadow text-center">
                    <div class="card-block">
                        <a class="avatar avatar-lg" href="javascript:void(0)">
                            <img src="<?= base_url() ?>assets/global/portraits/pp.gif" alt="...">
                        </a>
                        <h4 class="profile-user"><?= $this->session->userdata('nama'); ?></h4>
                        <p class="profile-job"><?= $this->session->userdata('dept'); ?></p>
                        <p>Hi! I'm Adrian the Senior UI Designer at AmazingSurge. We hope
                            you enjoy the design and quality of Social.</p>
                        <div class="profile-social">
                            <a class="icon bd-twitter" href="javascript:void(0)"></a>
                            <a class="icon bd-facebook" href="javascript:void(0)"></a>
                            <a class="icon bd-dribbble" href="javascript:void(0)"></a>
                            <a class="icon bd-github" href="javascript:void(0)"></a>
                        </div>
                        <button type="button" class="btn btn-primary">Follow</button>
                    </div>
                    <div class="card-footer">
                        <div class="row no-space">
                            <div class="col-4">
                                <strong class="profile-stat-count">260</strong>
                                <span>Follower</span>
                            </div>
                            <div class="col-4">
                                <strong class="profile-stat-count">180</strong>
                                <span>Following</span>
                            </div>
                            <div class="col-4">
                                <strong class="profile-stat-count">2000</strong>
                                <span>Tweets</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Page Widget -->
            </div>

            <div class="col-lg-9">
                <!-- Panel -->
                <div class="panel">
                    <div class="panel-body nav-tabs-animate nav-tabs-horizontal" data-plugin="tabs">
                        <ul class="nav nav-tabs nav-tabs-line" role="tablist">
                            <li class="nav-item" role="presentation"><a class="active nav-link" data-toggle="tab" href="#activities" aria-controls="activities" role="tab">Activities <span class="badge badge-pill badge-danger">5</span></a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#profile" aria-controls="profile" role="tab">Profile</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" data-toggle="tab" href="#messages" aria-controls="messages" role="tab">Messages</a></li>
                            <li class="nav-item dropdown">
                                <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" aria-expanded="false">Menu </a>
                                <div class="dropdown-menu" role="menu">
                                    <a class="active dropdown-item" data-toggle="tab" href="#activities" aria-controls="activities" role="tab">Activities <span class="badge badge-pill badge-danger">5</span></a>
                                    <a class="dropdown-item" data-toggle="tab" href="#profile" aria-controls="profile" role="tab">Profile</a>
                                    <a class="dropdown-item" data-toggle="tab" href="#messages" aria-controls="messages" role="tab">Messages</a>
                                </div>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active animation-slide-left" id="activities" role="tabpanel">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Ida Fleming
                                                    <small>posted an updated</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">“Check if it can be corrected with overflow : hidden”</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/3.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Julius
                                                    <small>uploaded 4 photos</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief clearfix">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/4.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Owen Hunt
                                                    <small>posted a new note</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                    ante dapibus diam. Sed nisi. Nulla quis sem at nibh
                                                    elementum imperdiet. Duis sagittis ipsum. Praesent
                                                    mauris. Fusce nec tellus sed augue semper porta.
                                                    Mauris massa.</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/5.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Terrance Arnold
                                                    <small>posted a new blog</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">
                                                    <div class="media">
                                                        <a class="pr-20">
                                                            <img class="w-160" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                        </a>
                                                        <div class="media-body pl-20">
                                                            <h4 class="mt-0 mb-5">Getting Started</h4>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Integer nec odio. Praesent libero. Sed
                                                                cursus ante dapibus diam. Sed nisi. Nulla quis
                                                                sem at nibh elementum imperdiet. Duis sagittis
                                                                ipsum. Praesent mauris.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Ida Fleming
                                                    <small>posted an new activity comment</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Cras sit amet nibh libero, in gravida nulla. Nulla
                                                    vel metus.</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/3.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Julius
                                                    <small>posted an updated</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                    ante dapibus diam.</div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <a class="btn btn-block btn-default profile-readMore" href="javascript:void(0)" role="button">Show more</a>
                            </div>

                            <div class="tab-pane animation-slide-left" id="profile" role="tabpanel">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/5.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Terrance Arnold
                                                    <small>posted a new blog</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">
                                                    <div class="media">
                                                        <a class="pr-20">
                                                            <img class="w-160" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                        </a>
                                                        <div class="media-body pl-20">
                                                            <h4 class="mt-0 mb-5">Getting Started</h4>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Integer nec odio. Praesent libero. Sed
                                                                cursus ante dapibus diam. Sed nisi. Nulla quis
                                                                sem at nibh elementum imperdiet. Duis sagittis
                                                                ipsum. Praesent mauris.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Ida Fleming
                                                    <small>posted an updated</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">“Check if it can be corrected with overflow : hidden”</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/4.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Owen Hunt
                                                    <small>posted a new note</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                    ante dapibus diam. Sed nisi. Nulla quis sem at nibh
                                                    elementum imperdiet. Duis sagittis ipsum. Praesent
                                                    mauris. Fusce nec tellus sed augue semper porta.
                                                    Mauris massa.</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Ida Fleming
                                                    <small>posted an new activity comment</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Cras sit amet nibh libero, in gravida nulla. Nulla
                                                    vel metus.</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/3.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Julius
                                                    <small>uploaded 4 photos</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief clearfix">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                    <img class="profile-uploaded" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                            <div class="tab-pane animation-slide-left" id="messages" role="tabpanel">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/2.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Ida Fleming
                                                    <small>posted an updated</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">“Check if it can be corrected with overflow : hidden”</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/5.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Terrance Arnold
                                                    <small>posted a new blog</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">
                                                    <div class="media">
                                                        <a class="pr-20">
                                                            <img class="w-160" src="<?= base_url() ?>assets/global/photos/placeholder.png" alt="...">
                                                        </a>
                                                        <div class="media-body pl-20">
                                                            <h4 class="mt-0 mb-5">Getting Started</h4>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                elit. Integer nec odio. Praesent libero. Sed
                                                                cursus ante dapibus diam. Sed nisi. Nulla quis
                                                                sem at nibh elementum imperdiet. Duis sagittis
                                                                ipsum. Praesent mauris.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/4.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Owen Hunt
                                                    <small>posted a new note</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                    ante dapibus diam. Sed nisi. Nulla quis sem at nibh
                                                    elementum imperdiet. Duis sagittis ipsum. Praesent
                                                    mauris. Fusce nec tellus sed augue semper porta.
                                                    Mauris massa.</div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="list-group-item">
                                        <div class="media">
                                            <div class="pr-20">
                                                <a class="avatar" href="javascript:void(0)">
                                                    <img class="img-fluid" src="<?= base_url() ?>assets/global/portraits/3.jpg" alt="...">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-5">Julius
                                                    <small>posted an updated</small>
                                                </h5>
                                                <small>active 14 minutes ago</small>
                                                <div class="profile-brief">Lorem ipsum dolor sit amet, consectetur adipiscing
                                                    elit. Integer nec odio. Praesent libero. Sed cursus
                                                    ante dapibus diam.</div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Panel -->
            </div>
        </div>
    </div>
</div>
<!-- End Page -->