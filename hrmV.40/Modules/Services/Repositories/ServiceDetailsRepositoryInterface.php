<?php

namespace Modules\Services\Repositories;

interface ServiceDetailsRepositoryInterface
{
    public function find($id);
    public function show($id);
    public function update($id, array $data);
    public function getAll();
    public function getActiveAll();
    public function fields();

    public function store(array $data);
    public function table($request);
    public function dataTable($request, $id = null);
    public function destroy($model);
    public function statusUpdate($request);
    public function destroyAll($request);
    public function createAttributes($id);
    public function editAttributes($model);
    public function newStore($id,$request);
    public function newUpdate($request, $model);

}
